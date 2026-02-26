import 'package:pulumi/pulumi.dart';
import 'boundary_args.dart';

/// Application management boundary.
///
///
/// To get more information about Boundary, see:
///
/// * [API documentation](https://docs.cloud.google.com/app-hub/docs/reference/rest/v1/Boundary)
/// * How-to Guides
/// * [AppHub](https://docs.cloud.google.com/app-hub/docs/)
///
/// ## Example Usage
///
/// ### Apphub Boundary Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.apphub.Boundary("example", {
/// location: "global",
/// crmNode: "projects/1111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.apphub.Boundary("example",
/// location="global",
/// crm_node="projects/1111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Apphub.Boundary("example", new()
/// {
/// Location = "global",
/// CrmNode = "projects/1111111111111",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apphub.NewBoundary(ctx, "example", &apphub.BoundaryArgs{
/// Location: pulumi.String("global"),
/// CrmNode:  pulumi.String("projects/1111111111111"),
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
/// import com.pulumi.gcp.apphub.Boundary;
/// import com.pulumi.gcp.apphub.BoundaryArgs;
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
/// var example = new Boundary("example", BoundaryArgs.builder()
/// .location("global")
/// .crmNode("projects/1111111111111")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:apphub:Boundary
/// properties:
/// location: global
/// crmNode: projects/1111111111111
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Boundary can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/boundary`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, Boundary can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apphub/boundary:Boundary default projects/{{project}}/locations/{{location}}/boundary
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/boundary:Boundary default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/boundary:Boundary default {{location}}
/// ```
class Boundary extends CustomResource {
  /// Create time.
  late final Output<String> createTime;

  /// Optional. The resource name of the CRM node being attached to the
  /// boundary.
  /// Format: `projects/{project-number}`
  late final Output<String?> crmNode;

  /// The location for the Boundary resource. Must be global.
  late final Output<String> location;

  /// Identifier. The resource name of the boundary.
  /// Format: "projects/{project}/locations/{{location}}/boundary"
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Boundary type.
  late final Output<String> type;

  /// Update time.
  late final Output<String> updateTime;

  Boundary(
    String name, {
    BoundaryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/boundary:Boundary',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.crmNode = Output.createUnknown<String?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
