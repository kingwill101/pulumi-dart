import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_f5bigip/ltm.dart' as f5ltm;

class F5BigIpLtmPoolStack extends pulumi.Stack {
  F5BigIpLtmPoolStack() : super() {
    final config = pulumi.Config();
    final backendInstancesValue = config.require('backendInstances');
    final f5BigIpPrivateIp = config.require('f5BigIpPrivateIp');

    final backendInstances = backendInstancesValue
        .split(',')
        .map((value) => value.trim())
        .where((value) => value.isNotEmpty)
        .toList(growable: false);

    final monitor = f5ltm.Monitor(
      'backend',
      args: f5ltm.MonitorArgs(
        name: '/Common/backend'.output(),
        parent: '/Common/http'.output(),
        send: 'GET /\\r\\n'.output(),
        timeout: 5.output(),
        interval: 10.output(),
      ),
    );

    final pool = f5ltm.Pool(
      'backend',
      args: f5ltm.PoolArgs(
        name: '/Common/backend'.output(),
        monitors: pulumi.Output.all([monitor.name.apply((v) => v)]),
        allowNat: 'yes'.output(),
        allowSnat: 'yes'.output(),
      ),
    );

    for (var i = 0; i < backendInstances.length; i++) {
      final backendAddress = backendInstances[i];
      f5ltm.PoolAttachment(
        'backend-$i',
        args: f5ltm.PoolAttachmentArgs(
          pool: pool.name,
          node: '/Common/$backendAddress'.output(),
        ),
      );
    }

    final virtualServer = f5ltm.VirtualServer(
      'backend',
      args: f5ltm.VirtualServerArgs(
        pool: pool.name,
        name: '/Common/backend'.output(),
        destination: f5BigIpPrivateIp.output(),
        port: 80.output(),
        sourceAddressTranslation: 'automap'.output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [pool]),
    );

    registerOutputs({
      'monitorName': monitor.name,
      'poolName': pool.name,
      'virtualServerName': virtualServer.name,
      'backendCount': backendInstances.length,
    });
  }
}
