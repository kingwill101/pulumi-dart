import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_args.dart';
import 'get_server_result.dart';

/// Use this data source to get the ARN of an AWS Transfer Server for use in other
/// resources.
Future<GetServerResult> getServer(
  GetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:transfer/getServer:getServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerResult.fromMap(result);
}
