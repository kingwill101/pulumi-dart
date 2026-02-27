import 'package:pulumi/pulumi.dart' hide Config;
import 'get_feature_store_feature_args2.dart';
import 'get_feature_store_feature_result2.dart';

/// Gets details of a single Feature.
Future<GetFeatureStoreFeatureResult2> getFeatureStoreFeature2(
  GetFeatureStoreFeatureArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureStoreFeature',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureStoreFeatureResult2.fromMap(result);
}
