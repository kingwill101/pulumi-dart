import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_state.dart';
import 'project_timeouts.dart';

/// Resource for managing an AWS Rekognition Project.
///
/// ## Example Usage
///
/// ### Content Moderation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rekognition.Project("example", {
///     name: "example-project",
///     autoUpdate: "ENABLED",
///     feature: "CONTENT_MODERATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rekognition.Project("example",
///     name="example-project",
///     auto_update="ENABLED",
///     feature="CONTENT_MODERATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rekognition.Project("example", new()
///     {
///         Name = "example-project",
///         AutoUpdate = "ENABLED",
///         Feature = "CONTENT_MODERATION",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rekognition"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rekognition.NewProject(ctx, "example", &rekognition.ProjectArgs{
/// 			Name:       pulumi.String("example-project"),
/// 			AutoUpdate: pulumi.String("ENABLED"),
/// 			Feature:    pulumi.String("CONTENT_MODERATION"),
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
/// resource "aws_rekognition_project" "example" {
///   name        = "example-project"
///   auto_update = "ENABLED"
///   feature     = "CONTENT_MODERATION"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rekognition.Project;
/// import com.pulumi.aws.rekognition.ProjectArgs;
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
///         var example = new Project("example", ProjectArgs.builder()
///             .name("example-project")
///             .autoUpdate("ENABLED")
///             .feature("CONTENT_MODERATION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rekognition:Project
///     properties:
///       name: example-project
///       autoUpdate: ENABLED
///       feature: CONTENT_MODERATION
/// ```
///
///
/// ### Custom Labels
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rekognition.Project("example", {
///     name: "example-project",
///     feature: "CUSTOM_LABELS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rekognition.Project("example",
///     name="example-project",
///     feature="CUSTOM_LABELS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rekognition.Project("example", new()
///     {
///         Name = "example-project",
///         Feature = "CUSTOM_LABELS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rekognition"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rekognition.NewProject(ctx, "example", &rekognition.ProjectArgs{
/// 			Name:    pulumi.String("example-project"),
/// 			Feature: pulumi.String("CUSTOM_LABELS"),
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
/// resource "aws_rekognition_project" "example" {
///   name    = "example-project"
///   feature = "CUSTOM_LABELS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rekognition.Project;
/// import com.pulumi.aws.rekognition.ProjectArgs;
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
///         var example = new Project("example", ProjectArgs.builder()
///             .name("example-project")
///             .feature("CUSTOM_LABELS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rekognition:Project
///     properties:
///       name: example-project
///       feature: CUSTOM_LABELS
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` - (String) Desired name of the project.
///
/// #### Optional
///
/// * `accountId` - (String) AWS Account where this resource is managed.
/// * `region` - (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Rekognition Project using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rekognition/project:Project example project-id-12345678
/// ```
class Project extends pulumi.CustomResource {
  /// ARN of the Project.
  late final pulumi.Output<String> arn;
  /// Specify if automatic retraining should occur. Valid values are `ENABLED` or `DISABLED`. Must be set when `feature` is `CONTENT_MODERATION`, but do not set otherwise.
  late final pulumi.Output<String> autoUpdate;
  /// Specify the feature being customized. Valid values are `CONTENT_MODERATION` or `CUSTOM_LABELS`. Defaults to `CUSTOM_LABELS`.
  late final pulumi.Output<String> feature;
  /// Desired name of the project.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ProjectTimeouts?> timeouts;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_rekognition_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rekognition/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    autoUpdate = registerOutput<String>('autoUpdate');
    feature = registerOutput<String>('feature');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ProjectTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rekognition/project:Project',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoUpdate = registerOutput<String>('autoUpdate');
    feature = registerOutput<String>('feature');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ProjectTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Project] resource.
  Project.reference(String urn)
    : super(
        'aws:rekognition/project:Project',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    autoUpdate = registerOutput<String>('autoUpdate');
    feature = registerOutput<String>('feature');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ProjectTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
