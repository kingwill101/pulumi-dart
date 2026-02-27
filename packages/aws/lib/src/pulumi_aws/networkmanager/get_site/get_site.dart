import 'package:pulumi/pulumi.dart';
import 'get_site_args.dart';
import 'get_site_result.dart';

/// Provides details about an existing Network Manager site.
Future<GetSiteResult> getSite(
  GetSiteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getSite:getSite',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSiteResult.fromMap(result);
}
