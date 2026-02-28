import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_hierarchy_structure_args.dart';
import 'user_hierarchy_structure_hierarchy_structure.dart';

/// Provides an Amazon Connect User Hierarchy Structure resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.UserHierarchyStructure("example", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     hierarchyStructure: {
///         levelOne: {
///             name: "levelone",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.UserHierarchyStructure("example",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     hierarchy_structure={
///         "level_one": {
///             "name": "levelone",
///         },
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
///     var example = new Aws.Connect.UserHierarchyStructure("example", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         HierarchyStructure = new Aws.Connect.Inputs.UserHierarchyStructureHierarchyStructureArgs
///         {
///             LevelOne = new Aws.Connect.Inputs.UserHierarchyStructureHierarchyStructureLevelOneArgs
///             {
///                 Name = "levelone",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewUserHierarchyStructure(ctx, "example", &connect.UserHierarchyStructureArgs{
/// 			InstanceId: pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			HierarchyStructure: &connect.UserHierarchyStructureHierarchyStructureArgs{
/// 				LevelOne: &connect.UserHierarchyStructureHierarchyStructureLevelOneArgs{
/// 					Name: pulumi.String("levelone"),
/// 				},
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
/// import com.pulumi.aws.connect.UserHierarchyStructure;
/// import com.pulumi.aws.connect.UserHierarchyStructureArgs;
/// import com.pulumi.aws.connect.inputs.UserHierarchyStructureHierarchyStructureArgs;
/// import com.pulumi.aws.connect.inputs.UserHierarchyStructureHierarchyStructureLevelOneArgs;
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
///         var example = new UserHierarchyStructure("example", UserHierarchyStructureArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .hierarchyStructure(UserHierarchyStructureHierarchyStructureArgs.builder()
///                 .levelOne(UserHierarchyStructureHierarchyStructureLevelOneArgs.builder()
///                     .name("levelone")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:UserHierarchyStructure
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       hierarchyStructure:
///         levelOne:
///           name: levelone
/// ```
///
///
/// ### With Five Levels
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.UserHierarchyStructure("example", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     hierarchyStructure: {
///         levelOne: {
///             name: "levelone",
///         },
///         levelTwo: {
///             name: "leveltwo",
///         },
///         levelThree: {
///             name: "levelthree",
///         },
///         levelFour: {
///             name: "levelfour",
///         },
///         levelFive: {
///             name: "levelfive",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.UserHierarchyStructure("example",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     hierarchy_structure={
///         "level_one": {
///             "name": "levelone",
///         },
///         "level_two": {
///             "name": "leveltwo",
///         },
///         "level_three": {
///             "name": "levelthree",
///         },
///         "level_four": {
///             "name": "levelfour",
///         },
///         "level_five": {
///             "name": "levelfive",
///         },
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
///     var example = new Aws.Connect.UserHierarchyStructure("example", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         HierarchyStructure = new Aws.Connect.Inputs.UserHierarchyStructureHierarchyStructureArgs
///         {
///             LevelOne = new Aws.Connect.Inputs.UserHierarchyStructureHierarchyStructureLevelOneArgs
///             {
///                 Name = "levelone",
///             },
///             LevelTwo = new Aws.Connect.Inputs.UserHierarchyStructureHierarchyStructureLevelTwoArgs
///             {
///                 Name = "leveltwo",
///             },
///             LevelThree = new Aws.Connect.Inputs.UserHierarchyStructureHierarchyStructureLevelThreeArgs
///             {
///                 Name = "levelthree",
///             },
///             LevelFour = new Aws.Connect.Inputs.UserHierarchyStructureHierarchyStructureLevelFourArgs
///             {
///                 Name = "levelfour",
///             },
///             LevelFive = new Aws.Connect.Inputs.UserHierarchyStructureHierarchyStructureLevelFiveArgs
///             {
///                 Name = "levelfive",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewUserHierarchyStructure(ctx, "example", &connect.UserHierarchyStructureArgs{
/// 			InstanceId: pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			HierarchyStructure: &connect.UserHierarchyStructureHierarchyStructureArgs{
/// 				LevelOne: &connect.UserHierarchyStructureHierarchyStructureLevelOneArgs{
/// 					Name: pulumi.String("levelone"),
/// 				},
/// 				LevelTwo: &connect.UserHierarchyStructureHierarchyStructureLevelTwoArgs{
/// 					Name: pulumi.String("leveltwo"),
/// 				},
/// 				LevelThree: &connect.UserHierarchyStructureHierarchyStructureLevelThreeArgs{
/// 					Name: pulumi.String("levelthree"),
/// 				},
/// 				LevelFour: &connect.UserHierarchyStructureHierarchyStructureLevelFourArgs{
/// 					Name: pulumi.String("levelfour"),
/// 				},
/// 				LevelFive: &connect.UserHierarchyStructureHierarchyStructureLevelFiveArgs{
/// 					Name: pulumi.String("levelfive"),
/// 				},
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
/// import com.pulumi.aws.connect.UserHierarchyStructure;
/// import com.pulumi.aws.connect.UserHierarchyStructureArgs;
/// import com.pulumi.aws.connect.inputs.UserHierarchyStructureHierarchyStructureArgs;
/// import com.pulumi.aws.connect.inputs.UserHierarchyStructureHierarchyStructureLevelOneArgs;
/// import com.pulumi.aws.connect.inputs.UserHierarchyStructureHierarchyStructureLevelTwoArgs;
/// import com.pulumi.aws.connect.inputs.UserHierarchyStructureHierarchyStructureLevelThreeArgs;
/// import com.pulumi.aws.connect.inputs.UserHierarchyStructureHierarchyStructureLevelFourArgs;
/// import com.pulumi.aws.connect.inputs.UserHierarchyStructureHierarchyStructureLevelFiveArgs;
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
///         var example = new UserHierarchyStructure("example", UserHierarchyStructureArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .hierarchyStructure(UserHierarchyStructureHierarchyStructureArgs.builder()
///                 .levelOne(UserHierarchyStructureHierarchyStructureLevelOneArgs.builder()
///                     .name("levelone")
///                     .build())
///                 .levelTwo(UserHierarchyStructureHierarchyStructureLevelTwoArgs.builder()
///                     .name("leveltwo")
///                     .build())
///                 .levelThree(UserHierarchyStructureHierarchyStructureLevelThreeArgs.builder()
///                     .name("levelthree")
///                     .build())
///                 .levelFour(UserHierarchyStructureHierarchyStructureLevelFourArgs.builder()
///                     .name("levelfour")
///                     .build())
///                 .levelFive(UserHierarchyStructureHierarchyStructureLevelFiveArgs.builder()
///                     .name("levelfive")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:UserHierarchyStructure
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       hierarchyStructure:
///         levelOne:
///           name: levelone
///         levelTwo:
///           name: leveltwo
///         levelThree:
///           name: levelthree
///         levelFour:
///           name: levelfour
///         levelFive:
///           name: levelfive
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect User Hierarchy Structures using the `instance_id`. For example:
///
/// ```sh
/// $ pulumi import aws:connect/userHierarchyStructure:UserHierarchyStructure example f1288a1f-6193-445a-b47e-af739b2
/// ```
class UserHierarchyStructure extends pulumi.CustomResource {
  /// A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  late final pulumi.Output<UserHierarchyStructureHierarchyStructure> hierarchyStructure;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [UserHierarchyStructure].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserHierarchyStructure]. {@macro pulumi_connect_user_hierarchy_structure_user_hierarchy_structure_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserHierarchyStructure(
    String name, {
    UserHierarchyStructureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/userHierarchyStructure:UserHierarchyStructure',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hierarchyStructure = registerOutput<UserHierarchyStructureHierarchyStructure>('hierarchyStructure');
    this.instanceId = registerOutput<String>('instanceId');
    this.region = registerOutput<String>('region');
  }
}
