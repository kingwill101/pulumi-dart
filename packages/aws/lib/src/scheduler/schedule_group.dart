import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_group_args.dart';

/// Provides an EventBridge Scheduler Schedule Group resource.
///
/// You can find out more about EventBridge Scheduler in the [User Guide](https://docs.aws.amazon.com/scheduler/latest/UserGuide/what-is-scheduler.html).
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.scheduler.ScheduleGroup("example", {name: "my-schedule-group"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.scheduler.ScheduleGroup("example", name="my-schedule-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Scheduler.ScheduleGroup("example", new()
///     {
///         Name = "my-schedule-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/scheduler"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := scheduler.NewScheduleGroup(ctx, "example", &scheduler.ScheduleGroupArgs{
/// 			Name: pulumi.String("my-schedule-group"),
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
/// import com.pulumi.aws.scheduler.ScheduleGroup;
/// import com.pulumi.aws.scheduler.ScheduleGroupArgs;
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
///         var example = new ScheduleGroup("example", ScheduleGroupArgs.builder()
///             .name("my-schedule-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:scheduler:ScheduleGroup
///     properties:
///       name: my-schedule-group
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import schedule groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:scheduler/scheduleGroup:ScheduleGroup example my-schedule-group
/// ```
class ScheduleGroup extends pulumi.CustomResource {
  /// ARN of the schedule group.
  late final pulumi.Output<String> arn;

  /// Time at which the schedule group was created.
  late final pulumi.Output<String> creationDate;

  /// Time at which the schedule group was last modified.
  late final pulumi.Output<String> lastModificationDate;

  /// Name of the schedule group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// State of the schedule group. Can be `ACTIVE` or `DELETING`.
  late final pulumi.Output<String> state;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ScheduleGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduleGroup]. {@macro pulumi_scheduler_schedule_group_schedule_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduleGroup(
    String name, {
    ScheduleGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:scheduler/scheduleGroup:ScheduleGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.creationDate = registerOutput<String>('creationDate');
    this.lastModificationDate = registerOutput<String>('lastModificationDate');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
