import 'package:pulumi/pulumi.dart' hide Config;
import 'get_dataset_args6.dart';
import 'get_dataset_result6.dart';

/// Gets any metadata associated with a dataset.
Future<GetDatasetResult6> getDataset6(
  GetDatasetArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDataset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult6.fromMap(result);
}
