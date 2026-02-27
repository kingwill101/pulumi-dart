import 'package:pulumi/pulumi.dart';
import 'get_origin_access_control_args.dart';
import 'get_origin_access_control_result.dart';

/// Use this data source to retrieve information for an Amazon CloudFront origin access control config.
///
/// ## Example Usage
///
/// The below example retrieves a CloudFront origin access control config.
Future<GetOriginAccessControlResult> getOriginAccessControl(
  GetOriginAccessControlArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginAccessControl:getOriginAccessControl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOriginAccessControlResult.fromMap(result);
}
