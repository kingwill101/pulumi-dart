import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_group_feature_aiplatform_v1beta1_args.dart';
import 'get_feature_group_feature_aiplatform_v1beta1_result.dart';

/// Gets details of a single Feature.
Future<GetFeatureGroupFeatureAiplatformV1beta1Result>
    getFeatureGroupFeatureAiplatformV1beta1(
  GetFeatureGroupFeatureAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureGroupFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupFeatureAiplatformV1beta1Result.fromMap(result);
}
