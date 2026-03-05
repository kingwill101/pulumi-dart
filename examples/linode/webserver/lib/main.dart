import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_linode/index.dart' as linode;

class LinodeWebserverStack extends pulumi.Stack {
  LinodeWebserverStack() : super() {
    const debian9 = 'linode/debian9';

    const startupScript = '''
#!/bin/bash
echo "Hello, World!" > index.html
nohup python -m SimpleHTTPServer 80 &
''';

    final profile = pulumi.Output.create(
      '',
    ).apply<linode.GetProfileResult>((_) => linode.getProfile());

    final stackscript = linode.StackScript(
      'simple-server',
      args: linode.StackScriptArgs(
        label: 'simple-server'.output(),
        script: startupScript.output(),
        description: 'SimpleHTTPServer example StackScript'.output(),
        images: [debian9].output(),
      ),
    );

    final stackscriptId = stackscript.id.apply<int>(
      (value) => int.parse(value),
    );

    final linodeInstance = linode.Instance(
      'instance',
      args: linode.InstanceArgs(
        type: 'g6-nanode-1'.output(),
        stackscriptId: stackscriptId,
        image: debian9.output(),
        region: 'us-east'.output(),
        authorizedKeys: profile.apply((value) => value.authorizedKeys),
        authorizedUsers: profile.apply((value) => [value.username]),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [stackscript]),
    );

    registerOutputs({
      'instanceLabel': linodeInstance.label,
      'instanceIP': linodeInstance.ipAddress,
    });
  }
}
