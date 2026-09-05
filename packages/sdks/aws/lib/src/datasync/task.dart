import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_args.dart';
import 'task_excludes.dart';
import 'task_includes.dart';
import 'task_options.dart';
import 'task_schedule.dart';
import 'task_state.dart';
import 'task_task_report_config.dart';

/// Manages an AWS DataSync Task, which represents a configuration for synchronization. Starting an execution of these DataSync Tasks (actually synchronizing files) is performed outside of this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.Task("example", {
///     options: {
///         bytesPerSecond: -1,
///     },
///     destinationLocationArn: destination.arn,
///     name: "example",
///     sourceLocationArn: source.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.Task("example",
///     options={
///         "bytes_per_second": -1,
///     },
///     destination_location_arn=destination["arn"],
///     name="example",
///     source_location_arn=source["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.Task("example", new()
///     {
///         Options = new Aws.DataSync.Inputs.TaskOptionsArgs
///         {
///             BytesPerSecond = -1,
///         },
///         DestinationLocationArn = destination.Arn,
///         Name = "example",
///         SourceLocationArn = source.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewTask(ctx, "example", &datasync.TaskArgs{
/// 			Options: &datasync.TaskOptionsArgs{
/// 				BytesPerSecond: pulumi.Int(-1),
/// 			},
/// 			DestinationLocationArn: pulumi.Any(destination.Arn),
/// 			Name:                   pulumi.String("example"),
/// 			SourceLocationArn:      pulumi.Any(source.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_datasync_task" "example" {
///   options = {
///     bytes_per_second = -1
///   }
///   destination_location_arn = destination.arn
///   name                     = "example"
///   source_location_arn      = source.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datasync.Task;
/// import com.pulumi.aws.datasync.TaskArgs;
/// import com.pulumi.aws.datasync.inputs.TaskOptionsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Task("example", TaskArgs.builder()
///             .options(TaskOptionsArgs.builder()
///                 .bytesPerSecond(-1)
///                 .build())
///             .destinationLocationArn(destination.arn())
///             .name("example")
///             .sourceLocationArn(source.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:Task
///     properties:
///       options:
///         bytesPerSecond: -1
///       destinationLocationArn: ${destination.arn}
///       name: example
///       sourceLocationArn: ${source.arn}
/// ```
///
///
/// ### Example Usage with Scheduling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.Task("example", {
///     schedule: {
///         scheduleExpression: "cron(0 12 ? * SUN,WED *)",
///     },
///     destinationLocationArn: destination.arn,
///     name: "example",
///     sourceLocationArn: source.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.Task("example",
///     schedule={
///         "schedule_expression": "cron(0 12 ? * SUN,WED *)",
///     },
///     destination_location_arn=destination["arn"],
///     name="example",
///     source_location_arn=source["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.Task("example", new()
///     {
///         Schedule = new Aws.DataSync.Inputs.TaskScheduleArgs
///         {
///             ScheduleExpression = "cron(0 12 ? * SUN,WED *)",
///         },
///         DestinationLocationArn = destination.Arn,
///         Name = "example",
///         SourceLocationArn = source.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewTask(ctx, "example", &datasync.TaskArgs{
/// 			Schedule: &datasync.TaskScheduleArgs{
/// 				ScheduleExpression: pulumi.String("cron(0 12 ? * SUN,WED *)"),
/// 			},
/// 			DestinationLocationArn: pulumi.Any(destination.Arn),
/// 			Name:                   pulumi.String("example"),
/// 			SourceLocationArn:      pulumi.Any(source.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_datasync_task" "example" {
///   schedule = {
///     schedule_expression = "cron(0 12 ? * SUN,WED *)"
///   }
///   destination_location_arn = destination.arn
///   name                     = "example"
///   source_location_arn      = source.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datasync.Task;
/// import com.pulumi.aws.datasync.TaskArgs;
/// import com.pulumi.aws.datasync.inputs.TaskScheduleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Task("example", TaskArgs.builder()
///             .schedule(TaskScheduleArgs.builder()
///                 .scheduleExpression("cron(0 12 ? * SUN,WED *)")
///                 .build())
///             .destinationLocationArn(destination.arn())
///             .name("example")
///             .sourceLocationArn(source.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:Task
///     properties:
///       schedule:
///         scheduleExpression: cron(0 12 ? * SUN,WED *)
///       destinationLocationArn: ${destination.arn}
///       name: example
///       sourceLocationArn: ${source.arn}
/// ```
///
///
/// ### Example Usage with Filtering
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.Task("example", {
///     excludes: {
///         filterType: "SIMPLE_PATTERN",
///         value: "/folder1|/folder2",
///     },
///     includes: {
///         filterType: "SIMPLE_PATTERN",
///         value: "/folder1|/folder2",
///     },
///     destinationLocationArn: destination.arn,
///     name: "example",
///     sourceLocationArn: source.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.Task("example",
///     excludes={
///         "filter_type": "SIMPLE_PATTERN",
///         "value": "/folder1|/folder2",
///     },
///     includes={
///         "filter_type": "SIMPLE_PATTERN",
///         "value": "/folder1|/folder2",
///     },
///     destination_location_arn=destination["arn"],
///     name="example",
///     source_location_arn=source["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.Task("example", new()
///     {
///         Excludes = new Aws.DataSync.Inputs.TaskExcludesArgs
///         {
///             FilterType = "SIMPLE_PATTERN",
///             Value = "/folder1|/folder2",
///         },
///         Includes = new Aws.DataSync.Inputs.TaskIncludesArgs
///         {
///             FilterType = "SIMPLE_PATTERN",
///             Value = "/folder1|/folder2",
///         },
///         DestinationLocationArn = destination.Arn,
///         Name = "example",
///         SourceLocationArn = source.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewTask(ctx, "example", &datasync.TaskArgs{
/// 			Excludes: &datasync.TaskExcludesArgs{
/// 				FilterType: pulumi.String("SIMPLE_PATTERN"),
/// 				Value:      pulumi.String("/folder1|/folder2"),
/// 			},
/// 			Includes: &datasync.TaskIncludesArgs{
/// 				FilterType: pulumi.String("SIMPLE_PATTERN"),
/// 				Value:      pulumi.String("/folder1|/folder2"),
/// 			},
/// 			DestinationLocationArn: pulumi.Any(destination.Arn),
/// 			Name:                   pulumi.String("example"),
/// 			SourceLocationArn:      pulumi.Any(source.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_datasync_task" "example" {
///   excludes = {
///     filter_type = "SIMPLE_PATTERN"
///     value       = "/folder1|/folder2"
///   }
///   includes = {
///     filter_type = "SIMPLE_PATTERN"
///     value       = "/folder1|/folder2"
///   }
///   destination_location_arn = destination.arn
///   name                     = "example"
///   source_location_arn      = source.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datasync.Task;
/// import com.pulumi.aws.datasync.TaskArgs;
/// import com.pulumi.aws.datasync.inputs.TaskExcludesArgs;
/// import com.pulumi.aws.datasync.inputs.TaskIncludesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Task("example", TaskArgs.builder()
///             .excludes(TaskExcludesArgs.builder()
///                 .filterType("SIMPLE_PATTERN")
///                 .value("/folder1|/folder2")
///                 .build())
///             .includes(TaskIncludesArgs.builder()
///                 .filterType("SIMPLE_PATTERN")
///                 .value("/folder1|/folder2")
///                 .build())
///             .destinationLocationArn(destination.arn())
///             .name("example")
///             .sourceLocationArn(source.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:Task
///     properties:
///       excludes:
///         filterType: SIMPLE_PATTERN
///         value: /folder1|/folder2
///       includes:
///         filterType: SIMPLE_PATTERN
///         value: /folder1|/folder2
///       destinationLocationArn: ${destination.arn}
///       name: example
///       sourceLocationArn: ${source.arn}
/// ```
///
///
/// ### Example Usage with Enhanced Task Mode
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.Task("example", {
///     options: {
///         gid: "NONE",
///         posixPermissions: "NONE",
///         uid: "NONE",
///         verifyMode: "ONLY_FILES_TRANSFERRED",
///     },
///     destinationLocationArn: destination.arn,
///     name: "example",
///     sourceLocationArn: source.arn,
///     taskMode: "ENHANCED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.Task("example",
///     options={
///         "gid": "NONE",
///         "posix_permissions": "NONE",
///         "uid": "NONE",
///         "verify_mode": "ONLY_FILES_TRANSFERRED",
///     },
///     destination_location_arn=destination["arn"],
///     name="example",
///     source_location_arn=source["arn"],
///     task_mode="ENHANCED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.Task("example", new()
///     {
///         Options = new Aws.DataSync.Inputs.TaskOptionsArgs
///         {
///             Gid = "NONE",
///             PosixPermissions = "NONE",
///             Uid = "NONE",
///             VerifyMode = "ONLY_FILES_TRANSFERRED",
///         },
///         DestinationLocationArn = destination.Arn,
///         Name = "example",
///         SourceLocationArn = source.Arn,
///         TaskMode = "ENHANCED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewTask(ctx, "example", &datasync.TaskArgs{
/// 			Options: &datasync.TaskOptionsArgs{
/// 				Gid:              pulumi.String("NONE"),
/// 				PosixPermissions: pulumi.String("NONE"),
/// 				Uid:              pulumi.String("NONE"),
/// 				VerifyMode:       pulumi.String("ONLY_FILES_TRANSFERRED"),
/// 			},
/// 			DestinationLocationArn: pulumi.Any(destination.Arn),
/// 			Name:                   pulumi.String("example"),
/// 			SourceLocationArn:      pulumi.Any(source.Arn),
/// 			TaskMode:               pulumi.String("ENHANCED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_datasync_task" "example" {
///   options = {
///     gid               = "NONE"
///     posix_permissions = "NONE"
///     uid               = "NONE"
///     verify_mode       = "ONLY_FILES_TRANSFERRED"
///   }
///   destination_location_arn = destination.arn
///   name                     = "example"
///   source_location_arn      = source.arn
///   task_mode                = "ENHANCED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datasync.Task;
/// import com.pulumi.aws.datasync.TaskArgs;
/// import com.pulumi.aws.datasync.inputs.TaskOptionsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Task("example", TaskArgs.builder()
///             .options(TaskOptionsArgs.builder()
///                 .gid("NONE")
///                 .posixPermissions("NONE")
///                 .uid("NONE")
///                 .verifyMode("ONLY_FILES_TRANSFERRED")
///                 .build())
///             .destinationLocationArn(destination.arn())
///             .name("example")
///             .sourceLocationArn(source.arn())
///             .taskMode("ENHANCED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:Task
///     properties:
///       options:
///         gid: NONE
///         posixPermissions: NONE
///         uid: NONE
///         verifyMode: ONLY_FILES_TRANSFERRED
///       destinationLocationArn: ${destination.arn}
///       name: example
///       sourceLocationArn: ${source.arn}
///       taskMode: ENHANCED
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the DataSync task.
///
///
/// Using `pulumi import`, import `aws.datasync.Task` using the DataSync Task ARN. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/task:Task example arn:aws:datasync:us-east-1:123456789012:task/task-12345678901234567
/// ```
class Task extends pulumi.CustomResource {
  /// ARN of the DataSync Task.
  late final pulumi.Output<String> arn;
  /// ARN of the CloudWatch Log Group that is used to monitor and log events in the sync task.
  late final pulumi.Output<String?> cloudwatchLogGroupArn;
  /// ARN of destination DataSync Location.
  late final pulumi.Output<String> destinationLocationArn;
  /// Filter rules that determines which files to exclude from a task.
  late final pulumi.Output<TaskExcludes?> excludes;
  /// Filter rules that determines which files to include in a task.
  late final pulumi.Output<TaskIncludes?> includes;
  /// Name of the DataSync Task.
  late final pulumi.Output<String> name;
  /// Configuration block containing option that controls the default behavior when you start an execution of this DataSync Task. For each individual task execution, you can override these options by specifying an overriding configuration in those executions.
  late final pulumi.Output<TaskOptions?> options;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies a schedule used to periodically transfer files from a source to a destination location.
  late final pulumi.Output<TaskSchedule?> schedule;
  /// ARN of source DataSync Location.
  late final pulumi.Output<String> sourceLocationArn;
  /// Key-value pairs of resource tags to assign to the DataSync Task. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// One of the following task modes for your data transfer:
  /// * `BASIC` (default) - Transfer files or objects between Amazon Web Services storage and on-premises, edge, or other cloud storage.
  /// * `ENHANCED` - Transfer virtually unlimited numbers of objects with enhanced metrics, more detailed logs, and higher performance than Basic mode. Currently available for transfers between Amazon S3 locations.
  late final pulumi.Output<String> taskMode;
  /// Configuration block containing the configuration of a DataSync Task Report. See `taskReportConfig` below.
  late final pulumi.Output<TaskTaskReportConfig?> taskReportConfig;

  /// Creates a new [Task].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Task]. {@macro pulumi_datasync_task_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Task(
    String name, {
    TaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/task:Task',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    cloudwatchLogGroupArn = registerOutput<String?>('cloudwatchLogGroupArn');
    destinationLocationArn = registerOutput<String>('destinationLocationArn');
    excludes = registerOutput<TaskExcludes?>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskExcludes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includes = registerOutput<TaskIncludes?>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskIncludes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    this.options = registerOutput<TaskOptions?>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    schedule = registerOutput<TaskSchedule?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceLocationArn = registerOutput<String>('sourceLocationArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskMode = registerOutput<String>('taskMode');
    taskReportConfig = registerOutput<TaskTaskReportConfig?>('taskReportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskTaskReportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Task] resource's state with the given [name] and [id].
  static Task get(
    String name,
    pulumi.Input<String> id, {
    TaskState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Task._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Task._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/task:Task',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cloudwatchLogGroupArn = registerOutput<String?>('cloudwatchLogGroupArn');
    destinationLocationArn = registerOutput<String>('destinationLocationArn');
    excludes = registerOutput<TaskExcludes?>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskExcludes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includes = registerOutput<TaskIncludes?>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskIncludes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    this.options = registerOutput<TaskOptions?>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    schedule = registerOutput<TaskSchedule?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceLocationArn = registerOutput<String>('sourceLocationArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskMode = registerOutput<String>('taskMode');
    taskReportConfig = registerOutput<TaskTaskReportConfig?>('taskReportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskTaskReportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Task] resource.
  Task.reference(String urn)
    : super(
        'aws:datasync/task:Task',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    cloudwatchLogGroupArn = registerOutput<String?>('cloudwatchLogGroupArn');
    destinationLocationArn = registerOutput<String>('destinationLocationArn');
    excludes = registerOutput<TaskExcludes?>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskExcludes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includes = registerOutput<TaskIncludes?>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskIncludes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    this.options = registerOutput<TaskOptions?>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    schedule = registerOutput<TaskSchedule?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceLocationArn = registerOutput<String>('sourceLocationArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskMode = registerOutput<String>('taskMode');
    taskReportConfig = registerOutput<TaskTaskReportConfig?>('taskReportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskTaskReportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
