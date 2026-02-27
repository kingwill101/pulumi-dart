import 'package:pulumi/pulumi.dart';
import 'get_finding_ids_args.dart';
import 'get_finding_ids_result.dart';

/// Data source for managing an AWS GuardDuty Finding Ids.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetFindingIdsResult> getFindingIds(
  GetFindingIdsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:guardduty/getFindingIds:getFindingIds',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFindingIdsResult.fromMap(result);
}
