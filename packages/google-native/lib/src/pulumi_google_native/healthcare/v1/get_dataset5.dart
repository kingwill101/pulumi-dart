import 'package:pulumi/pulumi.dart' hide Config;
import 'get_dataset_args5.dart';
import 'get_dataset_result5.dart';

/// Gets any metadata associated with a dataset.
Future<GetDatasetResult5> getDataset5(
  GetDatasetArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDataset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult5.fromMap(result);
}
