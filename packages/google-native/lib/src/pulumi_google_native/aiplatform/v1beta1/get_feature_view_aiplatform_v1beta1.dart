import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_view_aiplatform_v1beta1_args.dart';
import 'get_feature_view_aiplatform_v1beta1_result.dart';

/// Gets details of a single FeatureView.
Future<GetFeatureViewAiplatformV1beta1Result> getFeatureViewAiplatformV1beta1(
  GetFeatureViewAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureViewAiplatformV1beta1Result.fromMap(result);
}
