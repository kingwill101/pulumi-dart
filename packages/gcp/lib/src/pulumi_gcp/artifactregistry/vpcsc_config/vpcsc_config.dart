import 'package:pulumi/pulumi.dart';
import 'vpcsc_config_args.dart';

/// ## Example Usage
///
/// ### Artifact Registry Vpcsc Config
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_config = new gcp.artifactregistry.VpcscConfig("my-config", {
/// location: "us-central1",
/// vpcscPolicy: "ALLOW",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_config = gcp.artifactregistry.VpcscConfig("my-config",
/// location="us-central1",
/// vpcsc_policy="ALLOW")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_config = new Gcp.ArtifactRegistry.VpcscConfig("my-config", new()
/// {
/// Location = "us-central1",
/// VpcscPolicy = "ALLOW",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := artifactregistry.NewVpcscConfig(ctx, "my-config", &artifactregistry.VpcscConfigArgs{
/// Location:    pulumi.String("us-central1"),
/// VpcscPolicy: pulumi.String("ALLOW"),
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
/// import com.pulumi.gcp.artifactregistry.VpcscConfig;
/// import com.pulumi.gcp.artifactregistry.VpcscConfigArgs;
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
/// var my_config = new VpcscConfig("my-config", VpcscConfigArgs.builder()
/// .location("us-central1")
/// .vpcscPolicy("ALLOW")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-config:
/// type: gcp:artifactregistry:VpcscConfig
/// properties:
/// location: us-central1
/// vpcscPolicy: ALLOW
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// VPCSCConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vpcscConfig/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, VPCSCConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/vpcscConfig:VpcscConfig default projects/{{project}}/locations/{{location}}/vpcscConfig/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/vpcscConfig:VpcscConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/vpcscConfig:VpcscConfig default {{location}}/{{name}}
/// ```
class VpcscConfig extends CustomResource {
  /// The name of the location this config is located in.
  late final Output<String> location;

  /// The name of the project's VPC SC Config.
  /// Always of the form: projects/{project}/location/{location}/vpcscConfig
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The VPC SC policy for project and location.
  /// Possible values are: `DENY`, `ALLOW`.
  late final Output<String?> vpcscPolicy;

  VpcscConfig(
    String name, {
    VpcscConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:artifactregistry/vpcscConfig:VpcscConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.vpcscPolicy = Output.createUnknown<String?>();
  }
}
