import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sites_args.dart';
import 'get_sites_result.dart';

/// Provides details about existing Network Manager sites.
Future<GetSitesResult> getSites(
  GetSitesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getSites:getSites',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSitesResult.fromMap(result);
}
