import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_group_args.dart';
import 'machine_group_group_attribute.dart';
import 'machine_group_state.dart';

/// Provides a Log Service (SLS) Machine Group resource.
///
///
///
/// For information about Log Service (SLS) Machine Group and how to use it, see [What is Machine Group](https://next.api.alibabacloud.com/document/Sls/2020-12-30/CreateMachineGroup).
///
/// &gt; **NOTE:** Available since v1.259.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const projectName = config.get("projectName") || "project-for-machine-group-terraform";
/// const defaultyJqrue = new alicloud.log.Project("defaultyJqrue", {
///     description: "for terraform example",
///     name: projectName,
/// });
/// const _default = new alicloud.sls.MachineGroup("default", {
///     groupName: "group1",
///     projectName: projectName,
///     machineIdentifyType: "ip",
///     groupAttribute: {
///         groupTopic: "example",
///         externalName: "example",
///     },
///     machineLists: ["192.168.1.1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// project_name = config.get("projectName")
/// if project_name is None:
///     project_name = "project-for-machine-group-terraform"
/// defaulty_jqrue = alicloud.log.Project("defaultyJqrue",
///     description="for terraform example",
///     name=project_name)
/// default = alicloud.sls.MachineGroup("default",
///     group_name="group1",
///     project_name=project_name,
///     machine_identify_type="ip",
///     group_attribute={
///         "group_topic": "example",
///         "external_name": "example",
///     },
///     machine_lists=["192.168.1.1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var projectName = config.Get("projectName") ?? "project-for-machine-group-terraform";
///     var defaultyJqrue = new AliCloud.Log.Project("defaultyJqrue", new()
///     {
///         Description = "for terraform example",
///         Name = projectName,
///     });
///
///     var @default = new AliCloud.Sls.MachineGroup("default", new()
///     {
///         GroupName = "group1",
///         ProjectName = projectName,
///         MachineIdentifyType = "ip",
///         GroupAttribute = new AliCloud.Sls.Inputs.MachineGroupGroupAttributeArgs
///         {
///             GroupTopic = "example",
///             ExternalName = "example",
///         },
///         MachineLists = new[]
///         {
///             "192.168.1.1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		projectName := "project-for-machine-group-terraform"
/// 		if param := cfg.Get("projectName"); param != "" {
/// 			projectName = param
/// 		}
/// 		_, err := log.NewProject(ctx, "defaultyJqrue", &log.ProjectArgs{
/// 			Description: pulumi.String("for terraform example"),
/// 			Name:        pulumi.String(projectName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sls.NewMachineGroup(ctx, "default", &sls.MachineGroupArgs{
/// 			GroupName:           pulumi.String("group1"),
/// 			ProjectName:         pulumi.String(projectName),
/// 			MachineIdentifyType: pulumi.String("ip"),
/// 			GroupAttribute: &sls.MachineGroupGroupAttributeArgs{
/// 				GroupTopic:   pulumi.String("example"),
/// 				ExternalName: pulumi.String("example"),
/// 			},
/// 			MachineLists: pulumi.StringArray{
/// 				pulumi.String("192.168.1.1"),
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
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.sls.MachineGroup;
/// import com.pulumi.alicloud.sls.MachineGroupArgs;
/// import com.pulumi.alicloud.sls.inputs.MachineGroupGroupAttributeArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var projectName = config.get("projectName").orElse("project-for-machine-group-terraform");
///         var defaultyJqrue = new Project("defaultyJqrue", ProjectArgs.builder()
///             .description("for terraform example")
///             .name(projectName)
///             .build());
///
///         var default_ = new MachineGroup("default", MachineGroupArgs.builder()
///             .groupName("group1")
///             .projectName(projectName)
///             .machineIdentifyType("ip")
///             .groupAttribute(MachineGroupGroupAttributeArgs.builder()
///                 .groupTopic("example")
///                 .externalName("example")
///                 .build())
///             .machineLists("192.168.1.1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   projectName:
///     type: string
///     default: project-for-machine-group-terraform
/// resources:
///   defaultyJqrue:
///     type: alicloud:log:Project
///     properties:
///       description: for terraform example
///       name: ${projectName}
///   default:
///     type: alicloud:sls:MachineGroup
///     properties:
///       groupName: group1
///       projectName: ${projectName}
///       machineIdentifyType: ip
///       groupAttribute:
///         groupTopic: example
///         externalName: example
///       machineLists:
///         - 192.168.1.1
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log Service (SLS) Machine Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sls/machineGroup:MachineGroup example <project_name>:<group_name>
/// ```
class MachineGroup extends pulumi.CustomResource {
  /// Properties of machine groups. For details, please refer to the groupAttribute parameter description in the following table. See `group_attribute` below.
  late final pulumi.Output<MachineGroupGroupAttribute?> groupAttribute;

  /// The name of the machine group. The name must meet the following requirements:
  ///
  /// - The name of each machine group in a project must be unique.
  /// - It can contain only lowercase letters, digits, hyphens (-), and underscores (\_).
  /// - It must start and end with a lowercase letter or a digit.
  /// - It must be 3 to 128 characters in length.
  late final pulumi.Output<String> groupName;

  /// The type of the machine group. Set the value to an empty string.
  late final pulumi.Output<String?> groupType;

  /// The identifier type of the machine group. Valid values:
  ///
  /// - ip: The machine group uses IP addresses as identifiers.
  /// - userdefined: The machine group uses custom identifiers.
  late final pulumi.Output<String> machineIdentifyType;

  /// The identification information of the machine group.
  /// - If machineidentifiytype is configured to ip, enter the ip address of the server.
  /// - If machineidentifiytype is configured to userdefined, enter a custom identifier here.
  late final pulumi.Output<List<String>> machineLists;

  /// The name of the project.
  late final pulumi.Output<String> projectName;

  /// Creates a new [MachineGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineGroup]. {@macro pulumi_sls_machine_group_machine_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineGroup(
    String name, {
    MachineGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sls/machineGroup:MachineGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    groupAttribute = registerOutput<MachineGroupGroupAttribute?>(
      'groupAttribute',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MachineGroupGroupAttribute.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    groupName = registerOutput<String>('groupName');
    groupType = registerOutput<String?>('groupType');
    machineIdentifyType = registerOutput<String>('machineIdentifyType');
    machineLists = registerOutput<List<String>>('machineLists');
    projectName = registerOutput<String>('projectName');
  }

  /// Gets an existing [MachineGroup] resource's state with the given [name] and [id].
  static MachineGroup get(
    String name,
    pulumi.Input<String> id, {
    MachineGroupState? state,
  }) {
    return MachineGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MachineGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sls/machineGroup:MachineGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    groupAttribute = registerOutput<MachineGroupGroupAttribute?>(
      'groupAttribute',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MachineGroupGroupAttribute.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    groupName = registerOutput<String>('groupName');
    groupType = registerOutput<String?>('groupType');
    machineIdentifyType = registerOutput<String>('machineIdentifyType');
    machineLists = registerOutput<List<String>>('machineLists');
    projectName = registerOutput<String>('projectName');
  }
}
