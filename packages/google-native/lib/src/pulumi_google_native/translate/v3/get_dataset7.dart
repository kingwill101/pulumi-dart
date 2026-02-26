import 'package:pulumi/pulumi.dart';
import 'get_dataset_args7.dart';
import 'get_dataset_result7.dart';

/// Gets a Dataset.
Future<GetDatasetResult7> getDataset7(
  GetDatasetArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3:getDataset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult7.fromMap(result);
}
