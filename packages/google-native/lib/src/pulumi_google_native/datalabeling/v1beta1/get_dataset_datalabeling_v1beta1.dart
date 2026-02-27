import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_datalabeling_v1beta1_args.dart';
import 'get_dataset_datalabeling_v1beta1_result.dart';

/// Gets dataset by resource name.
Future<GetDatasetDatalabelingV1beta1Result> getDatasetDatalabelingV1beta1(
  GetDatasetDatalabelingV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetDatalabelingV1beta1Result.fromMap(result);
}
