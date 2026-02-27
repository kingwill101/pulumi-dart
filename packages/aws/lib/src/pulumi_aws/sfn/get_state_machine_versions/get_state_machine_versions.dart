import 'package:pulumi/pulumi.dart';
import 'get_state_machine_versions_args.dart';
import 'get_state_machine_versions_result.dart';

/// Data source for managing an AWS SFN (Step Functions) State Machine Versions.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetStateMachineVersionsResult> getStateMachineVersions(
  GetStateMachineVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getStateMachineVersions:getStateMachineVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStateMachineVersionsResult.fromMap(result);
}
