import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_healthcare_v1beta1_args.dart';
import 'get_dataset_healthcare_v1beta1_result.dart';

/// Gets any metadata associated with a dataset.
Future<GetDatasetHealthcareV1beta1Result> getDatasetHealthcareV1beta1(
  GetDatasetHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetHealthcareV1beta1Result.fromMap(result);
}
