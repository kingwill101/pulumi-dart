import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_group_aiplatform_v1beta1_args.dart';
import 'get_feature_group_aiplatform_v1beta1_result.dart';

/// Gets details of a single FeatureGroup.
Future<GetFeatureGroupAiplatformV1beta1Result> getFeatureGroupAiplatformV1beta1(
  GetFeatureGroupAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupAiplatformV1beta1Result.fromMap(result);
}
