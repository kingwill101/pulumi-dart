import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';

/// Resource for managing an AWS CodeCatalyst Project.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.codecatalyst.Project("test", {
///     spaceName: "myproject",
///     displayName: "MyProject",
///     description: "My CodeCatalyst Project created using Pulumi",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.codecatalyst.Project("test",
///     space_name="myproject",
///     display_name="MyProject",
///     description="My CodeCatalyst Project created using Pulumi")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CodeCatalyst.Project("test", new()
///     {
///         SpaceName = "myproject",
///         DisplayName = "MyProject",
///         Description = "My CodeCatalyst Project created using Pulumi",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecatalyst"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codecatalyst.NewProject(ctx, "test", &codecatalyst.ProjectArgs{
/// 			SpaceName:   pulumi.String("myproject"),
/// 			DisplayName: pulumi.String("MyProject"),
/// 			Description: pulumi.String("My CodeCatalyst Project created using Pulumi"),
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
/// import com.pulumi.aws.codecatalyst.Project;
/// import com.pulumi.aws.codecatalyst.ProjectArgs;
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
///         var test = new Project("test", ProjectArgs.builder()
///             .spaceName("myproject")
///             .displayName("MyProject")
///             .description("My CodeCatalyst Project created using Pulumi")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:codecatalyst:Project
///     properties:
///       spaceName: myproject
///       displayName: MyProject
///       description: My CodeCatalyst Project created using Pulumi
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeCatalyst Project using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:codecatalyst/project:Project example project-id-12345678
/// ```
class Project extends pulumi.CustomResource {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  late final pulumi.Output<String?> description;
  /// The friendly name of the project that will be displayed to users.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> displayName;
  /// The name of the project in the space.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the space.
  late final pulumi.Output<String> spaceName;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_codecatalyst_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codecatalyst/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.spaceName = registerOutput<String>('spaceName');
  }
}
