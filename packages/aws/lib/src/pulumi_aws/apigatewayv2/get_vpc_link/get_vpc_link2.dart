import 'package:pulumi/pulumi.dart';
import 'get_vpc_link_args2.dart';
import 'get_vpc_link_result2.dart';

/// Data source for managing an AWS API Gateway V2 VPC Link.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetVpcLinkResult2> getVpcLink2(
  GetVpcLinkArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getVpcLink:getVpcLink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcLinkResult2.fromMap(result);
}
