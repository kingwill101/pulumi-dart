import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_execution_args.dart';
import 'get_task_execution_result.dart';

/// Data source for managing an AWS ECS (Elastic Container) Task Execution. This data source calls the [RunTask](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) API, allowing execution of one-time tasks that don't fit a standard resource lifecycle. See the feature request issue for additional context.
///
/// > **NOTE on preview operations:** This data source calls the `RunTask` API on every read operation, which means new task(s) may be created from a `pulumi preview` command if all attributes are known. Placing this functionality behind a data source is an intentional trade off to enable use cases requiring a one-time task execution without relying on provisioners. Caution should be taken to ensure the data source is only executed once, or that the resulting tasks can safely run in parallel.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetTaskExecutionResult> getTaskExecution(
  GetTaskExecutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getTaskExecution:getTaskExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskExecutionResult.fromMap(result);
}
