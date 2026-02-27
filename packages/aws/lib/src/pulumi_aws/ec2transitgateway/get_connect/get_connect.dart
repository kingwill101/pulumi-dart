import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connect_args.dart';
import 'get_connect_result.dart';

/// Get information on an EC2 Transit Gateway Connect.
///
/// ## Example Usage
///
/// ### By Filter
///
///
///
/// ### By Identifier
Future<GetConnectResult> getConnect(
  GetConnectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getConnect:getConnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectResult.fromMap(result);
}
