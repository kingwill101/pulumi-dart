import 'package:pulumi/pulumi.dart';
import 'get_data_set_args.dart';
import 'get_data_set_result.dart';

/// Data source for managing a QuickSight Data Set.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDataSetResult> getDataSet(
  GetDataSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getDataSet:getDataSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataSetResult.fromMap(result);
}
