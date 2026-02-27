import 'package:pulumi/pulumi.dart' hide Config;
import 'get_license_args2.dart';
import 'get_license_result2.dart';

/// Returns the specified License resource. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
Future<GetLicenseResult2> getLicense2(
  GetLicenseArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getLicense',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLicenseResult2.fromMap(result);
}
