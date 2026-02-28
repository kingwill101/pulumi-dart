import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_repository_args.dart';

/// Resource for managing an AWS CodeCatalyst Source Repository.
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
/// const example = new aws.codecatalyst.SourceRepository("example", {
///     name: "example-repo",
///     projectName: "example-project",
///     spaceName: "example-space",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codecatalyst.SourceRepository("example",
///     name="example-repo",
///     project_name="example-project",
///     space_name="example-space")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeCatalyst.SourceRepository("example", new()
///     {
///         Name = "example-repo",
///         ProjectName = "example-project",
///         SpaceName = "example-space",
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
/// 		_, err := codecatalyst.NewSourceRepository(ctx, "example", &codecatalyst.SourceRepositoryArgs{
/// 			Name:        pulumi.String("example-repo"),
/// 			ProjectName: pulumi.String("example-project"),
/// 			SpaceName:   pulumi.String("example-space"),
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
/// import com.pulumi.aws.codecatalyst.SourceRepository;
/// import com.pulumi.aws.codecatalyst.SourceRepositoryArgs;
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
///         var example = new SourceRepository("example", SourceRepositoryArgs.builder()
///             .name("example-repo")
///             .projectName("example-project")
///             .spaceName("example-space")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codecatalyst:SourceRepository
///     properties:
///       name: example-repo
///       projectName: example-project
///       spaceName: example-space
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeCatalyst Source Repository using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:codecatalyst/sourceRepository:SourceRepository example example-repo
/// ```
class SourceRepository extends pulumi.CustomResource {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  late final pulumi.Output<String?> description;

  /// The name of the source repository. For more information about name requirements, see [Quotas for source repositories](https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html).
  late final pulumi.Output<String> name;

  /// The name of the project in the CodeCatalyst space.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> projectName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the CodeCatalyst space.
  late final pulumi.Output<String> spaceName;

  /// Creates a new [SourceRepository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceRepository]. {@macro pulumi_codecatalyst_source_repository_source_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceRepository(
    String name, {
    SourceRepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codecatalyst/sourceRepository:SourceRepository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.projectName = registerOutput<String>('projectName');
    this.region = registerOutput<String>('region');
    this.spaceName = registerOutput<String>('spaceName');
  }
}
