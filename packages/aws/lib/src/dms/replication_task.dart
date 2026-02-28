import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_task_args.dart';

/// Provides a DMS (Data Migration Service) replication task resource. DMS replication tasks can be created, updated, deleted, and imported.
///
/// > **NOTE:** Changing most arguments will stop the task if it is running. You can set `start_replication_task` to resume the task afterwards.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new replication task
/// const test = new aws.dms.ReplicationTask("test", {
///     cdcStartTime: "1993-05-21T05:50:00Z",
///     migrationType: "full-load",
///     replicationInstanceArn: test_dms_replication_instance_tf.replicationInstanceArn,
///     replicationTaskId: "test-dms-replication-task-tf",
///     replicationTaskSettings: "...",
///     sourceEndpointArn: test_dms_source_endpoint_tf.endpointArn,
///     tableMappings: "{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"%\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}",
///     tags: {
///         Name: "test",
///     },
///     targetEndpointArn: test_dms_target_endpoint_tf.endpointArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new replication task
/// test = aws.dms.ReplicationTask("test",
///     cdc_start_time="1993-05-21T05:50:00Z",
///     migration_type="full-load",
///     replication_instance_arn=test_dms_replication_instance_tf["replicationInstanceArn"],
///     replication_task_id="test-dms-replication-task-tf",
///     replication_task_settings="...",
///     source_endpoint_arn=test_dms_source_endpoint_tf["endpointArn"],
///     table_mappings="{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"%\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}",
///     tags={
///         "Name": "test",
///     },
///     target_endpoint_arn=test_dms_target_endpoint_tf["endpointArn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new replication task
///     var test = new Aws.Dms.ReplicationTask("test", new()
///     {
///         CdcStartTime = "1993-05-21T05:50:00Z",
///         MigrationType = "full-load",
///         ReplicationInstanceArn = test_dms_replication_instance_tf.ReplicationInstanceArn,
///         ReplicationTaskId = "test-dms-replication-task-tf",
///         ReplicationTaskSettings = "...",
///         SourceEndpointArn = test_dms_source_endpoint_tf.EndpointArn,
///         TableMappings = "{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"%\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}",
///         Tags =
///         {
///             { "Name", "test" },
///         },
///         TargetEndpointArn = test_dms_target_endpoint_tf.EndpointArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new replication task
/// 		_, err := dms.NewReplicationTask(ctx, "test", &dms.ReplicationTaskArgs{
/// 			CdcStartTime:            pulumi.String("1993-05-21T05:50:00Z"),
/// 			MigrationType:           pulumi.String("full-load"),
/// 			ReplicationInstanceArn:  pulumi.Any(test_dms_replication_instance_tf.ReplicationInstanceArn),
/// 			ReplicationTaskId:       pulumi.String("test-dms-replication-task-tf"),
/// 			ReplicationTaskSettings: pulumi.String("..."),
/// 			SourceEndpointArn:       pulumi.Any(test_dms_source_endpoint_tf.EndpointArn),
/// 			TableMappings:           pulumi.String("{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"%\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("test"),
/// 			},
/// 			TargetEndpointArn: pulumi.Any(test_dms_target_endpoint_tf.EndpointArn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         // Create a new replication task
///         var test = new ReplicationTask("test", ReplicationTaskArgs.builder()
///             .cdcStartTime("1993-05-21T05:50:00Z")
///             .migrationType("full-load")
///             .replicationInstanceArn(test_dms_replication_instance_tf.replicationInstanceArn())
///             .replicationTaskId("test-dms-replication-task-tf")
///             .replicationTaskSettings("...")
///             .sourceEndpointArn(test_dms_source_endpoint_tf.endpointArn())
///             .tableMappings("{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"%\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}")
///             .tags(Map.of("Name", "test"))
///             .targetEndpointArn(test_dms_target_endpoint_tf.endpointArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new replication task
///   test:
///     type: aws:dms:ReplicationTask
///     properties:
///       cdcStartTime: 1993-05-21T05:50:00Z
///       migrationType: full-load
///       replicationInstanceArn: ${["test-dms-replication-instance-tf"].replicationInstanceArn}
///       replicationTaskId: test-dms-replication-task-tf
///       replicationTaskSettings: '...'
///       sourceEndpointArn: ${["test-dms-source-endpoint-tf"].endpointArn}
///       tableMappings: '{"rules":[{"rule-type":"selection","rule-id":"1","rule-name":"1","object-locator":{"schema-name":"%","table-name":"%"},"rule-action":"include"}]}'
///       tags:
///         Name: test
///       targetEndpointArn: ${["test-dms-target-endpoint-tf"].endpointArn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import replication tasks using the `replication_task_id`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/replicationTask:ReplicationTask test test-dms-replication-task-tf
/// ```
class ReplicationTask extends pulumi.CustomResource {
  /// Indicates when you want a change data capture (CDC) operation to start. The value can be a RFC3339 formatted date, a checkpoint, or a LSN/SCN format depending on the source engine. For more information see [Determining a CDC native start point](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native).
  late final pulumi.Output<String> cdcStartPosition;
  /// RFC3339 formatted date string or UNIX timestamp for the start of the Change Data Capture (CDC) operation.
  late final pulumi.Output<String?> cdcStartTime;
  /// Migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  late final pulumi.Output<String> migrationType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the replication instance.
  late final pulumi.Output<String> replicationInstanceArn;
  /// ARN for the replication task.
  late final pulumi.Output<String> replicationTaskArn;
  /// Replication task identifier which must contain from 1 to 255 alphanumeric characters or hyphens, first character must be a letter, cannot end with a hyphen, and cannot contain two consecutive hyphens.
  late final pulumi.Output<String> replicationTaskId;
  /// Escaped JSON string that contains the task settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html). Note that `Logging.CloudWatchLogGroup` and `Logging.CloudWatchLogStream` are read only and should not be defined, even as `null`, in the configuration since AWS provides a value for these settings.
  late final pulumi.Output<String> replicationTaskSettings;
  /// A friendly name for the resource identifier at the end of the EndpointArn response parameter that is returned in the created Endpoint object.
  late final pulumi.Output<String?> resourceIdentifier;
  /// ARN that uniquely identifies the source endpoint.
  late final pulumi.Output<String> sourceEndpointArn;
  /// Whether to run or stop the replication task.
  late final pulumi.Output<bool?> startReplicationTask;
  /// Replication Task status.
  late final pulumi.Output<String> status;
  /// Escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  late final pulumi.Output<String> tableMappings;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN that uniquely identifies the target endpoint.
  late final pulumi.Output<String> targetEndpointArn;

  /// Creates a new [ReplicationTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationTask]. {@macro pulumi_dms_replication_task_replication_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationTask(
    String name, {
    ReplicationTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationTask:ReplicationTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cdcStartPosition = registerOutput<String>('cdcStartPosition');
    this.cdcStartTime = registerOutput<String?>('cdcStartTime');
    this.migrationType = registerOutput<String>('migrationType');
    this.region = registerOutput<String>('region');
    this.replicationInstanceArn = registerOutput<String>('replicationInstanceArn');
    this.replicationTaskArn = registerOutput<String>('replicationTaskArn');
    this.replicationTaskId = registerOutput<String>('replicationTaskId');
    this.replicationTaskSettings = registerOutput<String>('replicationTaskSettings');
    this.resourceIdentifier = registerOutput<String?>('resourceIdentifier');
    this.sourceEndpointArn = registerOutput<String>('sourceEndpointArn');
    this.startReplicationTask = registerOutput<bool?>('startReplicationTask');
    this.status = registerOutput<String>('status');
    this.tableMappings = registerOutput<String>('tableMappings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetEndpointArn = registerOutput<String>('targetEndpointArn');
  }
}
