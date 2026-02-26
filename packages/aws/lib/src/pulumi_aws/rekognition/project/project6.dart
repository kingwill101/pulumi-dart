import 'package:pulumi/pulumi.dart';
import '../project_timeouts/project_timeouts2.dart';
import 'project_args6.dart';

/// Resource for managing an AWS Rekognition Project.
///
/// ## Example Usage
///
/// ### Content Moderation
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rekognition.Project("example", {
/// name: "example-project",
/// autoUpdate: "ENABLED",
/// feature: "CONTENT_MODERATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rekognition.Project("example",
/// name="example-project",
/// auto_update="ENABLED",
/// feature="CONTENT_MODERATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rekognition.Project("example", new()
/// {
/// Name = "example-project",
/// AutoUpdate = "ENABLED",
/// Feature = "CONTENT_MODERATION",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rekognition"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rekognition.NewProject(ctx, "example", &rekognition.ProjectArgs{
/// Name:       pulumi.String("example-project"),
/// AutoUpdate: pulumi.String("ENABLED"),
/// Feature:    pulumi.String("CONTENT_MODERATION"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Project("example", ProjectArgs.builder()
/// .name("example-project")
/// .autoUpdate("ENABLED")
/// .feature("CONTENT_MODERATION")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rekognition:Project
/// properties:
/// name: example-project
/// autoUpdate: ENABLED
/// feature: CONTENT_MODERATION
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Custom Labels
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rekognition.Project("example", {
/// name: "example-project",
/// feature: "CUSTOM_LABELS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rekognition.Project("example",
/// name="example-project",
/// feature="CUSTOM_LABELS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rekognition.Project("example", new()
/// {
/// Name = "example-project",
/// Feature = "CUSTOM_LABELS",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rekognition"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rekognition.NewProject(ctx, "example", &rekognition.ProjectArgs{
/// Name:    pulumi.String("example-project"),
/// Feature: pulumi.String("CUSTOM_LABELS"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Project("example", ProjectArgs.builder()
/// .name("example-project")
/// .feature("CUSTOM_LABELS")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rekognition:Project
/// properties:
/// name: example-project
/// feature: CUSTOM_LABELS
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Rekognition Project using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rekognition/project:Project example project-id-12345678
/// ```
class Project6 extends CustomResource {
  /// ARN of the Project.
  late final Output<String> arn;

  /// Specify if automatic retraining should occur. Valid values are `ENABLED` or `DISABLED`. Must be set when <span pulumi-lang-nodejs="`feature`" pulumi-lang-dotnet="`Feature`" pulumi-lang-go="`feature`" pulumi-lang-python="`feature`" pulumi-lang-yaml="`feature`" pulumi-lang-java="`feature`">`feature`</span> is `CONTENT_MODERATION`, but do not set otherwise.
  late final Output<String> autoUpdate;

  /// Specify the feature being customized. Valid values are `CONTENT_MODERATION` or `CUSTOM_LABELS`. Defaults to `CUSTOM_LABELS`.
  late final Output<String?> feature;

  /// Desired name of the project.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ProjectTimeouts2?> timeouts;

  Project6(
    String name, {
    ProjectArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rekognition/project:Project',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.autoUpdate = Output.createUnknown<String>();
    this.feature = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<ProjectTimeouts2?>();
  }
}
