import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_aiplatform_v1beta1_args.dart';
import 'get_dataset_aiplatform_v1beta1_result.dart';

/// Gets a Dataset.
Future<GetDatasetAiplatformV1beta1Result> getDatasetAiplatformV1beta1(
  GetDatasetAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetAiplatformV1beta1Result.fromMap(result);
}
