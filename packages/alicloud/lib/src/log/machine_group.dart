import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_group_args.dart';

/// Log Service manages all the ECS instances whose logs need to be collected by using the Logtail client in the form of machine groups.
/// [Refer to details](https://www.alibabacloud.com/help/doc-detail/28966.htm)
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.log.Project("example", {
///     projectName: `terraform-example-${_default.result}`,
///     description: "terraform-example",
/// });
/// const exampleMachineGroup = new alicloud.log.MachineGroup("example", {
///     project: example.projectName,
///     name: "terraform-example",
///     identifyType: "ip",
///     topic: "terraform",
///     identifyLists: [
///         "10.0.0.1",
///         "10.0.0.2",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.log.Project("example",
///     project_name=f"terraform-example-{default['result']}",
///     description="terraform-example")
/// example_machine_group = alicloud.log.MachineGroup("example",
///     project=example.project_name,
///     name="terraform-example",
///     identify_type="ip",
///     topic="terraform",
///     identify_lists=[
///         "10.0.0.1",
///         "10.0.0.2",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Log.Project("example", new()
///     {
///         ProjectName = $"terraform-example-{@default.Result}",
///         Description = "terraform-example",
///     });
///
///     var exampleMachineGroup = new AliCloud.Log.MachineGroup("example", new()
///     {
///         Project = example.ProjectName,
///         Name = "terraform-example",
///         IdentifyType = "ip",
///         Topic = "terraform",
///         IdentifyLists = new[]
///         {
///             "10.0.0.1",
///             "10.0.0.2",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewMachineGroup(ctx, "example", &log.MachineGroupArgs{
/// 			Project:      example.ProjectName,
/// 			Name:         pulumi.String("terraform-example"),
/// 			IdentifyType: pulumi.String("ip"),
/// 			Topic:        pulumi.String("terraform"),
/// 			IdentifyLists: pulumi.StringArray{
/// 				pulumi.String("10.0.0.1"),
/// 				pulumi.String("10.0.0.2"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.MachineGroup;
/// import com.pulumi.alicloud.log.MachineGroupArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .projectName(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .build());
///
///         var exampleMachineGroup = new MachineGroup("exampleMachineGroup", MachineGroupArgs.builder()
///             .project(example.projectName())
///             .name("terraform-example")
///             .identifyType("ip")
///             .topic("terraform")
///             .identifyLists(
///                 "10.0.0.1",
///                 "10.0.0.2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:log:Project
///     properties:
///       projectName: terraform-example-${default.result}
///       description: terraform-example
///   exampleMachineGroup:
///     type: alicloud:log:MachineGroup
///     name: example
///     properties:
///       project: ${example.projectName}
///       name: terraform-example
///       identifyType: ip
///       topic: terraform
///       identifyLists:
///         - 10.0.0.1
///         - 10.0.0.2
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use the existing sls-logtail module
/// to create logtail config, machine group, install logtail on ECS instances and join instances into machine group one-click.
///
/// ## Import
///
/// Log machine group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/machineGroup:MachineGroup example tf-log:tf-machine-group
/// ```
class MachineGroup extends pulumi.CustomResource {
  /// The specific machine identification, which can be an IP address or user-defined identity.
  late final pulumi.Output<List<String>> identifyLists;
  /// The machine identification type, including IP and user-defined identity. Valid values are "ip" and "userdefined". Default to "ip".
  late final pulumi.Output<String?> identifyType;
  /// The machine group name, which is unique in the same project.
  late final pulumi.Output<String> name;
  /// The project name to the machine group belongs.
  late final pulumi.Output<String> project;
  /// The topic of a machine group.
  late final pulumi.Output<String?> topic;

  /// Creates a new [MachineGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineGroup]. {@macro pulumi_log_machine_group_machine_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineGroup(
    String name, {
    MachineGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/machineGroup:MachineGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.identifyLists = registerOutput<List<String>>('identifyLists');
    this.identifyType = registerOutput<String?>('identifyType');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.topic = registerOutput<String?>('topic');
  }
}
