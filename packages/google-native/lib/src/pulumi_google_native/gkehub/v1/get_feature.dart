import 'package:pulumi/pulumi.dart';
import 'get_feature_args.dart';
import 'get_feature_result.dart';

/// Gets details of a single Feature.
Future<GetFeatureResult> getFeature(
  GetFeatureArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getFeature',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureResult.fromMap(result);
}
