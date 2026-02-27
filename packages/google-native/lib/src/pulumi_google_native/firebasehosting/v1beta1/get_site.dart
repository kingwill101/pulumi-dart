import 'package:pulumi/pulumi.dart' hide Config;
import 'get_site_args.dart';
import 'get_site_result.dart';

/// Gets the specified Hosting Site.
Future<GetSiteResult> getSite(
  GetSiteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getSite',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSiteResult.fromMap(result);
}
