import 'package:pulumi/pulumi.dart' hide Config;
import 'get_feature_store_feature_args.dart';
import 'get_feature_store_feature_result.dart';

/// Gets details of a single Feature.
Future<GetFeatureStoreFeatureResult> getFeatureStoreFeature(
  GetFeatureStoreFeatureArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureStoreFeature',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureStoreFeatureResult.fromMap(result);
}
