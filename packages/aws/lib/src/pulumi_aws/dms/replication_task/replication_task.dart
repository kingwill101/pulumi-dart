import 'package:pulumi/pulumi.dart';
import 'replication_task_args.dart';

/// Provides a DMS (Data Migration Service) replication task resource. DMS replication tasks can be created, updated, deleted, and imported.
///
/// > **NOTE:** Changing most arguments will stop the task if it is running. You can set <span pulumi-lang-nodejs="`startReplicationTask`" pulumi-lang-dotnet="`StartReplicationTask`" pulumi-lang-go="`startReplicationTask`" pulumi-lang-python="`start_replication_task`" pulumi-lang-yaml="`startReplicationTask`" pulumi-lang-java="`startReplicationTask`">`start_replication_task`</span> to resume the task afterwards.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new replication task
/// const test = new aws.dms.ReplicationTask("test", {
/// cdcStartTime: "1993-05-21T05:50:00Z",
/// migrationType: "full-load",
/// replicationInstanceArn: test_dms_replication_instance_tf.replicationInstanceArn,
/// replicationTaskId: "test-dms-replication-task-tf",
/// replicationTaskSettings: "...",
/// sourceEndpointArn: test_dms_source_endpoint_tf.endpointArn,
/// tableMappings: "{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"%\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}",
/// tags: {
/// Name: "test",
/// },
/// targetEndpointArn: test_dms_target_endpoint_tf.endpointArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new replication task
/// test = aws.dms.ReplicationTask("test",
/// cdc_start_time="1993-05-21T05:50:00Z",
/// migration_type="full-load",
/// replication_instance_arn=test_dms_replication_instance_tf["replicationInstanceArn"],
/// replication_task_id="test-dms-replication-task-tf",
/// replication_task_settings="...",
/// source_endpoint_arn=test_dms_source_endpoint_tf["endpointArn"],
/// table_mappings="{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"%\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}",
/// tags={
/// "Name": "test",
/// },
/// target_endpoint_arn=test_dms_target_endpoint_tf["endpointArn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Create a new replication task
/// var test = new Aws.Dms.ReplicationTask("test", new()
/// {
/// CdcStartTime = "1993-05-21T05:50:00Z",
/// MigrationType = "full-load",
/// ReplicationInstanceArn = test_dms_replication_instance_tf.ReplicationInstanceArn,
/// ReplicationTaskId = "test-dms-replication-task-tf",
/// ReplicationTaskSettings = "...",
/// SourceEndpointArn = test_dms_source_endpoint_tf.EndpointArn,
/// TableMappings = "{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"%\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}",
/// Tags =
/// {
/// { "Name", "test" },
/// },
/// TargetEndpointArn = test_dms_target_endpoint_tf.EndpointArn,
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
/// // Create a new replication task
/// _, err := dms.NewReplicationTask(ctx, "test", &dms.ReplicationTaskArgs{
/// CdcStartTime:            pulumi.String("1993-05-21T05:50:00Z"),
/// MigrationType:           pulumi.String("full-load"),
/// ReplicationInstanceArn:  pulumi.Any(test_dms_replication_instance_tf.ReplicationInstanceArn),
/// ReplicationTaskId:       pulumi.String("test-dms-replication-task-tf"),
/// ReplicationTaskSettings: pulumi.String("..."),
/// SourceEndpointArn:       pulumi.Any(test_dms_source_endpoint_tf.EndpointArn),
/// TableMappings:           pulumi.String("{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"%\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("test"),
/// },
/// TargetEndpointArn: pulumi.Any(test_dms_target_endpoint_tf.EndpointArn),
/// })
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
/// import com.pulumi.aws.dms.ReplicationTask;
/// import com.pulumi.aws.dms.ReplicationTaskArgs;
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
/// // Create a new replication task
/// var test = new ReplicationTask("test", ReplicationTaskArgs.builder()
/// .cdcStartTime("1993-05-21T05:50:00Z")
/// .migrationType("full-load")
/// .replicationInstanceArn(test_dms_replication_instance_tf.replicationInstanceArn())
/// .replicationTaskId("test-dms-replication-task-tf")
/// .replicationTaskSettings("...")
/// .sourceEndpointArn(test_dms_source_endpoint_tf.endpointArn())
/// .tableMappings("{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"%\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}")
/// .tags(Map.of("Name", "test"))
/// .targetEndpointArn(test_dms_target_endpoint_tf.endpointArn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create a new replication task
/// test:
/// type: aws:dms:ReplicationTask
/// properties:
/// cdcStartTime: 1993-05-21T05:50:00Z
/// migrationType: full-load
/// replicationInstanceArn: ${["test-dms-replication-instance-tf"].replicationInstanceArn}
/// replicationTaskId: test-dms-replication-task-tf
/// replicationTaskSettings: '...'
/// sourceEndpointArn: ${["test-dms-source-endpoint-tf"].endpointArn}
/// tableMappings: '{"rules":[{"rule-type":"selection","rule-id":"1","rule-name":"1","object-locator":{"schema-name":"%","table-name":"%"},"rule-action":"include"}]}'
/// tags:
/// Name: test
/// targetEndpointArn: ${["test-dms-target-endpoint-tf"].endpointArn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import replication tasks using the <span pulumi-lang-nodejs="`replicationTaskId`" pulumi-lang-dotnet="`ReplicationTaskId`" pulumi-lang-go="`replicationTaskId`" pulumi-lang-python="`replication_task_id`" pulumi-lang-yaml="`replicationTaskId`" pulumi-lang-java="`replicationTaskId`">`replication_task_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dms/replicationTask:ReplicationTask test test-dms-replication-task-tf
/// ```
class ReplicationTask extends CustomResource {
  /// Indicates when you want a change data capture (CDC) operation to start. The value can be a RFC3339 formatted date, a checkpoint, or a LSN/SCN format depending on the source engine. For more information see [Determining a CDC native start point](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native).
  late final Output<String> cdcStartPosition;

  /// RFC3339 formatted date string or UNIX timestamp for the start of the Change Data Capture (CDC) operation.
  late final Output<String?> cdcStartTime;

  /// Migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  late final Output<String> migrationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the replication instance.
  late final Output<String> replicationInstanceArn;

  /// ARN for the replication task.
  late final Output<String> replicationTaskArn;

  /// Replication task identifier which must contain from 1 to 255 alphanumeric characters or hyphens, first character must be a letter, cannot end with a hyphen, and cannot contain two consecutive hyphens.
  late final Output<String> replicationTaskId;

  /// Escaped JSON string that contains the task settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html). Note that `Logging.CloudWatchLogGroup` and `Logging.CloudWatchLogStream` are read only and should not be defined, even as <span pulumi-lang-nodejs="`null`" pulumi-lang-dotnet="`Null`" pulumi-lang-go="`null`" pulumi-lang-python="`null`" pulumi-lang-yaml="`null`" pulumi-lang-java="`null`">`null`</span>, in the configuration since AWS provides a value for these settings.
  late final Output<String> replicationTaskSettings;

  /// A friendly name for the resource identifier at the end of the EndpointArn response parameter that is returned in the created Endpoint object.
  late final Output<String?> resourceIdentifier;

  /// ARN that uniquely identifies the source endpoint.
  late final Output<String> sourceEndpointArn;

  /// Whether to run or stop the replication task.
  late final Output<bool?> startReplicationTask;

  /// Replication Task status.
  late final Output<String> status;

  /// Escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  late final Output<String> tableMappings;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ARN that uniquely identifies the target endpoint.
  late final Output<String> targetEndpointArn;

  ReplicationTask(
    String name, {
    ReplicationTaskArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationTask:ReplicationTask',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cdcStartPosition = Output.createUnknown<String>();
    this.cdcStartTime = Output.createUnknown<String?>();
    this.migrationType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.replicationInstanceArn = Output.createUnknown<String>();
    this.replicationTaskArn = Output.createUnknown<String>();
    this.replicationTaskId = Output.createUnknown<String>();
    this.replicationTaskSettings = Output.createUnknown<String>();
    this.resourceIdentifier = Output.createUnknown<String?>();
    this.sourceEndpointArn = Output.createUnknown<String>();
    this.startReplicationTask = Output.createUnknown<bool?>();
    this.status = Output.createUnknown<String>();
    this.tableMappings = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.targetEndpointArn = Output.createUnknown<String>();
  }
}
