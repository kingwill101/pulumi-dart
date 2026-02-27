import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_healthcare_v1_args.dart';
import 'get_dataset_healthcare_v1_result.dart';

/// Gets any metadata associated with a dataset.
Future<GetDatasetHealthcareV1Result> getDatasetHealthcareV1(
  GetDatasetHealthcareV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetHealthcareV1Result.fromMap(result);
}
