import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sites_outposts_args.dart';
import 'get_sites_outposts_result.dart';

/// Provides details about multiple Outposts Sites.
Future<GetSitesOutpostsResult> getSitesOutposts(
  GetSitesOutpostsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getSites:getSites',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSitesOutpostsResult.fromMap(result);
}
