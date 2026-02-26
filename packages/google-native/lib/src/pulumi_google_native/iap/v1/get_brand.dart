import 'package:pulumi/pulumi.dart';
import 'get_brand_args.dart';
import 'get_brand_result.dart';

/// Retrieves the OAuth brand of the project.
Future<GetBrandResult> getBrand(
  GetBrandArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iap/v1:getBrand',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBrandResult.fromMap(result);
}
