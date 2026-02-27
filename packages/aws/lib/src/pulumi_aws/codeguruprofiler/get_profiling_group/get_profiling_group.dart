import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_profiling_group_args.dart';
import 'get_profiling_group_result.dart';

/// Data source for managing an AWS CodeGuru Profiler Profiling Group.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetProfilingGroupResult> getProfilingGroup(
  GetProfilingGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codeguruprofiler/getProfilingGroup:getProfilingGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfilingGroupResult.fromMap(result);
}
