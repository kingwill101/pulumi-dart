import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_connection_args.dart';
import 'get_vpc_connection_result.dart';

/// Get information on an Amazon MSK VPC Connection.
Future<GetVpcConnectionResult> getVpcConnection(
  GetVpcConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getVpcConnection:getVpcConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcConnectionResult.fromMap(result);
}
