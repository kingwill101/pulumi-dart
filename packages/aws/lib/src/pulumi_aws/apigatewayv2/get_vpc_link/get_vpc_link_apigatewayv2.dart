import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_link_apigatewayv2_args.dart';
import 'get_vpc_link_apigatewayv2_result.dart';

/// Data source for managing an AWS API Gateway V2 VPC Link.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetVpcLinkApigatewayv2Result> getVpcLinkApigatewayv2(
  GetVpcLinkApigatewayv2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getVpcLink:getVpcLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcLinkApigatewayv2Result.fromMap(result);
}
