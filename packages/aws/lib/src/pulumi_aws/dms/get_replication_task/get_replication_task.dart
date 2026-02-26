import 'package:pulumi/pulumi.dart';
import 'get_replication_task_args.dart';
import 'get_replication_task_result.dart';

/// Data source for managing an AWS DMS (Database Migration) Replication Task.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.dms.getReplicationTask({
/// replicationTaskId: testAwsDmsReplicationTask.replicationTaskId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.dms.get_replication_task(replication_task_id=test_aws_dms_replication_task["replicationTaskId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Dms.GetReplicationTask.Invoke(new()
/// {
/// ReplicationTaskId = testAwsDmsReplicationTask.ReplicationTaskId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dms.LookupReplicationTask(ctx, &dms.LookupReplicationTaskArgs{
/// ReplicationTaskId: testAwsDmsReplicationTask.ReplicationTaskId,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dms.DmsFunctions;
/// import com.pulumi.aws.dms.inputs.GetReplicationTaskArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var test = DmsFunctions.getReplicationTask(GetReplicationTaskArgs.builder()
/// .replicationTaskId(testAwsDmsReplicationTask.replicationTaskId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:dms:getReplicationTask
/// arguments:
/// replicationTaskId: ${testAwsDmsReplicationTask.replicationTaskId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetReplicationTaskResult> getReplicationTask(
  GetReplicationTaskArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getReplicationTask:getReplicationTask',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReplicationTaskResult.fromMap(result);
}
