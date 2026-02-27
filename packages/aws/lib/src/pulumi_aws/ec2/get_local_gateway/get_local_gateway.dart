import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_args.dart';
import 'get_local_gateway_result.dart';

/// Provides details about an EC2 Local Gateway.
///
/// ## Example Usage
///
/// The following example shows how one might accept a local gateway id as a variable.
Future<GetLocalGatewayResult> getLocalGateway(
  GetLocalGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGateway:getLocalGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayResult.fromMap(result);
}
