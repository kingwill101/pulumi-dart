import 'package:pulumi/pulumi.dart';
import 'get_vpc_link_args.dart';
import 'get_vpc_link_result.dart';

/// Use this data source to get the id of a VPC Link in
/// API Gateway. To fetch the VPC Link you must provide a name to match against.
/// As there is no unique name constraint on API Gateway VPC Links this data source will
/// error if there is more than one match.
Future<GetVpcLinkResult> getVpcLink(
  GetVpcLinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getVpcLink:getVpcLink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcLinkResult.fromMap(result);
}
