import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_args.dart';
import 'task_excludes.dart';
import 'task_includes.dart';
import 'task_options.dart';
import 'task_schedule.dart';
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
///     destinationLocationArn: destination.arn,
///     name: "example",
///     sourceLocationArn: source.arn,
///     options: {
///         bytesPerSecond: -1,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.Task("example",
///     destination_location_arn=destination["arn"],
///     name="example",
///     source_location_arn=source["arn"],
///     options={
///         "bytes_per_second": -1,
///     })
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
///         DestinationLocationArn = destination.Arn,
///         Name = "example",
///         SourceLocationArn = source.Arn,
///         Options = new Aws.DataSync.Inputs.TaskOptionsArgs
///         {
///             BytesPerSecond = -1,
///         },
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
/// 			DestinationLocationArn: pulumi.Any(destination.Arn),
/// 			Name:                   pulumi.String("example"),
/// 			SourceLocationArn:      pulumi.Any(source.Arn),
/// 			Options: &datasync.TaskOptionsArgs{
/// 				BytesPerSecond: pulumi.Int(-1),
/// 			},
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
/// import com.pulumi.aws.datasync.Task;
/// import com.pulumi.aws.datasync.TaskArgs;
/// import com.pulumi.aws.datasync.inputs.TaskOptionsArgs;
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
///         var example = new Task("example", TaskArgs.builder()
///             .destinationLocationArn(destination.arn())
///             .name("example")
///             .sourceLocationArn(source.arn())
///             .options(TaskOptionsArgs.builder()
///                 .bytesPerSecond(-1)
///                 .build())
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
///       destinationLocationArn: ${destination.arn}
///       name: example
///       sourceLocationArn: ${source.arn}
///       options:
///         bytesPerSecond: -1
/// ```
///
///
///
/// ### With Scheduling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.Task("example", {
///     destinationLocationArn: destination.arn,
///     name: "example",
///     sourceLocationArn: source.arn,
///     schedule: {
///         scheduleExpression: "cron(0 12 ? * SUN,WED *)",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.Task("example",
///     destination_location_arn=destination["arn"],
///     name="example",
///     source_location_arn=source["arn"],
///     schedule={
///         "schedule_expression": "cron(0 12 ? * SUN,WED *)",
///     })
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
///         DestinationLocationArn = destination.Arn,
///         Name = "example",
///         SourceLocationArn = source.Arn,
///         Schedule = new Aws.DataSync.Inputs.TaskScheduleArgs
///         {
///             ScheduleExpression = "cron(0 12 ? * SUN,WED *)",
///         },
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
/// 			DestinationLocationArn: pulumi.Any(destination.Arn),
/// 			Name:                   pulumi.String("example"),
/// 			SourceLocationArn:      pulumi.Any(source.Arn),
/// 			Schedule: &datasync.TaskScheduleArgs{
/// 				ScheduleExpression: pulumi.String("cron(0 12 ? * SUN,WED *)"),
/// 			},
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
/// import com.pulumi.aws.datasync.Task;
/// import com.pulumi.aws.datasync.TaskArgs;
/// import com.pulumi.aws.datasync.inputs.TaskScheduleArgs;
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
///         var example = new Task("example", TaskArgs.builder()
///             .destinationLocationArn(destination.arn())
///             .name("example")
///             .sourceLocationArn(source.arn())
///             .schedule(TaskScheduleArgs.builder()
///                 .scheduleExpression("cron(0 12 ? * SUN,WED *)")
///                 .build())
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
///       destinationLocationArn: ${destination.arn}
///       name: example
///       sourceLocationArn: ${source.arn}
///       schedule:
///         scheduleExpression: cron(0 12 ? * SUN,WED *)
/// ```
///
///
///
/// ### With Filtering
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.Task("example", {
///     destinationLocationArn: destination.arn,
///     name: "example",
///     sourceLocationArn: source.arn,
///     excludes: {
///         filterType: "SIMPLE_PATTERN",
///         value: "/folder1|/folder2",
///     },
///     includes: {
///         filterType: "SIMPLE_PATTERN",
///         value: "/folder1|/folder2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.Task("example",
///     destination_location_arn=destination["arn"],
///     name="example",
///     source_location_arn=source["arn"],
///     excludes={
///         "filter_type": "SIMPLE_PATTERN",
///         "value": "/folder1|/folder2",
///     },
///     includes={
///         "filter_type": "SIMPLE_PATTERN",
///         "value": "/folder1|/folder2",
///     })
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
///         DestinationLocationArn = destination.Arn,
///         Name = "example",
///         SourceLocationArn = source.Arn,
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
/// 			DestinationLocationArn: pulumi.Any(destination.Arn),
/// 			Name:                   pulumi.String("example"),
/// 			SourceLocationArn:      pulumi.Any(source.Arn),
/// 			Excludes: &datasync.TaskExcludesArgs{
/// 				FilterType: pulumi.String("SIMPLE_PATTERN"),
/// 				Value:      pulumi.String("/folder1|/folder2"),
/// 			},
/// 			Includes: &datasync.TaskIncludesArgs{
/// 				FilterType: pulumi.String("SIMPLE_PATTERN"),
/// 				Value:      pulumi.String("/folder1|/folder2"),
/// 			},
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
/// import com.pulumi.aws.datasync.Task;
/// import com.pulumi.aws.datasync.TaskArgs;
/// import com.pulumi.aws.datasync.inputs.TaskExcludesArgs;
/// import com.pulumi.aws.datasync.inputs.TaskIncludesArgs;
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
///         var example = new Task("example", TaskArgs.builder()
///             .destinationLocationArn(destination.arn())
///             .name("example")
///             .sourceLocationArn(source.arn())
///             .excludes(TaskExcludesArgs.builder()
///                 .filterType("SIMPLE_PATTERN")
///                 .value("/folder1|/folder2")
///                 .build())
///             .includes(TaskIncludesArgs.builder()
///                 .filterType("SIMPLE_PATTERN")
///                 .value("/folder1|/folder2")
///                 .build())
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
///       destinationLocationArn: ${destination.arn}
///       name: example
///       sourceLocationArn: ${source.arn}
///       excludes:
///         filterType: SIMPLE_PATTERN
///         value: /folder1|/folder2
///       includes:
///         filterType: SIMPLE_PATTERN
///         value: /folder1|/folder2
/// ```
///
///
///
/// ### With Enhanced Task Mode
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.Task("example", {
///     destinationLocationArn: destination.arn,
///     name: "example",
///     sourceLocationArn: source.arn,
///     taskMode: "ENHANCED",
///     options: {
///         gid: "NONE",
///         posixPermissions: "NONE",
///         uid: "NONE",
///         verifyMode: "ONLY_FILES_TRANSFERRED",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.Task("example",
///     destination_location_arn=destination["arn"],
///     name="example",
///     source_location_arn=source["arn"],
///     task_mode="ENHANCED",
///     options={
///         "gid": "NONE",
///         "posix_permissions": "NONE",
///         "uid": "NONE",
///         "verify_mode": "ONLY_FILES_TRANSFERRED",
///     })
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
///         DestinationLocationArn = destination.Arn,
///         Name = "example",
///         SourceLocationArn = source.Arn,
///         TaskMode = "ENHANCED",
///         Options = new Aws.DataSync.Inputs.TaskOptionsArgs
///         {
///             Gid = "NONE",
///             PosixPermissions = "NONE",
///             Uid = "NONE",
///             VerifyMode = "ONLY_FILES_TRANSFERRED",
///         },
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
/// 			DestinationLocationArn: pulumi.Any(destination.Arn),
/// 			Name:                   pulumi.String("example"),
/// 			SourceLocationArn:      pulumi.Any(source.Arn),
/// 			TaskMode:               pulumi.String("ENHANCED"),
/// 			Options: &datasync.TaskOptionsArgs{
/// 				Gid:              pulumi.String("NONE"),
/// 				PosixPermissions: pulumi.String("NONE"),
/// 				Uid:              pulumi.String("NONE"),
/// 				VerifyMode:       pulumi.String("ONLY_FILES_TRANSFERRED"),
/// 			},
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
/// import com.pulumi.aws.datasync.Task;
/// import com.pulumi.aws.datasync.TaskArgs;
/// import com.pulumi.aws.datasync.inputs.TaskOptionsArgs;
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
///         var example = new Task("example", TaskArgs.builder()
///             .destinationLocationArn(destination.arn())
///             .name("example")
///             .sourceLocationArn(source.arn())
///             .taskMode("ENHANCED")
///             .options(TaskOptionsArgs.builder()
///                 .gid("NONE")
///                 .posixPermissions("NONE")
///                 .uid("NONE")
///                 .verifyMode("ONLY_FILES_TRANSFERRED")
///                 .build())
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
///       destinationLocationArn: ${destination.arn}
///       name: example
///       sourceLocationArn: ${source.arn}
///       taskMode: ENHANCED
///       options:
///         gid: NONE
///         posixPermissions: NONE
///         uid: NONE
///         verifyMode: ONLY_FILES_TRANSFERRED
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync task.
///
///
/// Using `pulumi import`, import `aws.datasync.Task` using the DataSync Task Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/task:Task example arn:aws:datasync:us-east-1:123456789012:task/task-12345678901234567
/// ```
class Task extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Task.
  late final pulumi.Output<String> arn;

  /// Amazon Resource Name (ARN) of the CloudWatch Log Group that is used to monitor and log events in the sync task.
  late final pulumi.Output<String?> cloudwatchLogGroupArn;

  /// Amazon Resource Name (ARN) of destination DataSync Location.
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

  /// Amazon Resource Name (ARN) of source DataSync Location.
  late final pulumi.Output<String> sourceLocationArn;

  /// Key-value pairs of resource tags to assign to the DataSync Task. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// One of the following task modes for your data transfer:
  /// * `BASIC` (default) - Transfer files or objects between Amazon Web Services storage and on-premises, edge, or other cloud storage.
  /// * `ENHANCED` - Transfer virtually unlimited numbers of objects with enhanced metrics, more detailed logs, and higher performance than Basic mode. Currently available for transfers between Amazon S3 locations.
  late final pulumi.Output<String> taskMode;

  /// Configuration block containing the configuration of a DataSync Task Report. See `task_report_config` below.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cloudwatchLogGroupArn =
        registerOutput<String?>('cloudwatchLogGroupArn');
    this.destinationLocationArn =
        registerOutput<String>('destinationLocationArn');
    this.excludes = registerOutput<TaskExcludes?>('excludes');
    this.includes = registerOutput<TaskIncludes?>('includes');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<TaskOptions?>('options');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<TaskSchedule?>('schedule');
    this.sourceLocationArn = registerOutput<String>('sourceLocationArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.taskMode = registerOutput<String>('taskMode');
    this.taskReportConfig =
        registerOutput<TaskTaskReportConfig?>('taskReportConfig');
  }
}
