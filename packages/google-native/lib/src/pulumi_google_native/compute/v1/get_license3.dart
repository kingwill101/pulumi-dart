import 'package:pulumi/pulumi.dart';
import 'get_license_args3.dart';
import 'get_license_result3.dart';

/// Returns the specified License resource. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
Future<GetLicenseResult3> getLicense3(
  GetLicenseArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getLicense',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLicenseResult3.fromMap(result);
}
