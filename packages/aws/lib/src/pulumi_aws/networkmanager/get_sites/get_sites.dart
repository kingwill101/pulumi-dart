import 'package:pulumi/pulumi.dart';
import 'get_sites_args.dart';
import 'get_sites_result.dart';

/// Provides details about existing Network Manager sites.
Future<GetSitesResult> getSites(
  GetSitesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getSites:getSites',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSitesResult.fromMap(result);
}
