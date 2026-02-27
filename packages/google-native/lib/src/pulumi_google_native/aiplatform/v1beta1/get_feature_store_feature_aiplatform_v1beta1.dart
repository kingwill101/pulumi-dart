import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_store_feature_aiplatform_v1beta1_args.dart';
import 'get_feature_store_feature_aiplatform_v1beta1_result.dart';

/// Gets details of a single Feature.
Future<GetFeatureStoreFeatureAiplatformV1beta1Result>
    getFeatureStoreFeatureAiplatformV1beta1(
  GetFeatureStoreFeatureAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureStoreFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureStoreFeatureAiplatformV1beta1Result.fromMap(result);
}
