import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_site_outposts_args.dart';
import 'get_site_outposts_result.dart';

/// Provides details about an Outposts Site.
Future<GetSiteOutpostsResult> getSiteOutposts(
  GetSiteOutpostsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getSite:getSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteOutpostsResult.fromMap(result);
}
