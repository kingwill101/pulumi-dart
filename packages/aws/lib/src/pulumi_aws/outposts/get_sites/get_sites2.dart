import 'package:pulumi/pulumi.dart';
import 'get_sites_args2.dart';
import 'get_sites_result2.dart';

/// Provides details about multiple Outposts Sites.
Future<GetSitesResult2> getSites2(
  GetSitesArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getSites:getSites',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSitesResult2.fromMap(result);
}
