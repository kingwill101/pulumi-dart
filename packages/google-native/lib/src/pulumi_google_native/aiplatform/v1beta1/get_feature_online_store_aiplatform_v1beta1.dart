import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_online_store_aiplatform_v1beta1_args.dart';
import 'get_feature_online_store_aiplatform_v1beta1_result.dart';

/// Gets details of a single FeatureOnlineStore.
Future<GetFeatureOnlineStoreAiplatformV1beta1Result>
    getFeatureOnlineStoreAiplatformV1beta1(
  GetFeatureOnlineStoreAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureOnlineStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureOnlineStoreAiplatformV1beta1Result.fromMap(result);
}
