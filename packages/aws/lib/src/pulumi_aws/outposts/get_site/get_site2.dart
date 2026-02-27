import 'package:pulumi/pulumi.dart';
import 'get_site_args2.dart';
import 'get_site_result2.dart';

/// Provides details about an Outposts Site.
Future<GetSiteResult2> getSite2(
  GetSiteArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getSite:getSite',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSiteResult2.fromMap(result);
}
