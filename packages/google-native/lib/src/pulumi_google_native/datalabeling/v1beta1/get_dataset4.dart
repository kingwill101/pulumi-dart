import 'package:pulumi/pulumi.dart' hide Config;
import 'get_dataset_args4.dart';
import 'get_dataset_result4.dart';

/// Gets dataset by resource name.
Future<GetDatasetResult4> getDataset4(
  GetDatasetArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getDataset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult4.fromMap(result);
}
