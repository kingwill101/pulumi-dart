import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_featurestore_aiplatform_v1beta1_args.dart';
import 'get_featurestore_aiplatform_v1beta1_result.dart';

/// Gets details of a single Featurestore.
Future<GetFeaturestoreAiplatformV1beta1Result> getFeaturestoreAiplatformV1beta1(
  GetFeaturestoreAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreAiplatformV1beta1Result.fromMap(result);
}
