import 'package:pulumi/pulumi.dart';
import 'get_origin_access_identities_args.dart';
import 'get_origin_access_identities_result.dart';

/// Use this data source to get ARNs, ids and S3 canonical user IDs of Amazon CloudFront origin access identities.
///
/// ## Example Usage
///
/// ### All origin access identities in the account
///
///
///
/// ### Origin access identities filtered by comment/name
///
/// Origin access identities whose comments are `example-comment1`, `example-comment2`
Future<GetOriginAccessIdentitiesResult> getOriginAccessIdentities(
  GetOriginAccessIdentitiesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginAccessIdentities:getOriginAccessIdentities',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOriginAccessIdentitiesResult.fromMap(result);
}
