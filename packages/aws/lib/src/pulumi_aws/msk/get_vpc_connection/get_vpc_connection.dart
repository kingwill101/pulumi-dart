import 'package:pulumi/pulumi.dart';
import 'get_vpc_connection_args.dart';
import 'get_vpc_connection_result.dart';

/// Get information on an Amazon MSK VPC Connection.
Future<GetVpcConnectionResult> getVpcConnection(
  GetVpcConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getVpcConnection:getVpcConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcConnectionResult.fromMap(result);
}
