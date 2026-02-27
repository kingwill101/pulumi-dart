import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bootstrap_brokers_args.dart';
import 'get_bootstrap_brokers_result.dart';

/// Get a list of brokers that a client application can use to bootstrap.
Future<GetBootstrapBrokersResult> getBootstrapBrokers(
  GetBootstrapBrokersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getBootstrapBrokers:getBootstrapBrokers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBootstrapBrokersResult.fromMap(result);
}
