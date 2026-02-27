import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_origin_access_identity_args.dart';
import 'get_origin_access_identity_result.dart';

/// Use this data source to retrieve information for an Amazon CloudFront origin access identity.
///
/// ## Example Usage
///
/// The following example below creates a CloudFront origin access identity.
Future<GetOriginAccessIdentityResult> getOriginAccessIdentity(
  GetOriginAccessIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginAccessIdentity:getOriginAccessIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOriginAccessIdentityResult.fromMap(result);
}
