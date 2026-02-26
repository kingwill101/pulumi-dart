import 'package:pulumi/pulumi.dart';
import 'taxonomy_args.dart';

/// A collection of policy tags that classify data along a common axis.
///
///
/// To get more information about Taxonomy, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.taxonomies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Taxonomy Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicTaxonomy = new gcp.datacatalog.Taxonomy("basic_taxonomy", {
/// displayName: "my_taxonomy",
/// description: "A collection of policy tags",
/// activatedPolicyTypes: ["FINE_GRAINED_ACCESS_CONTROL"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_taxonomy = gcp.datacatalog.Taxonomy("basic_taxonomy",
/// display_name="my_taxonomy",
/// description="A collection of policy tags",
/// activated_policy_types=["FINE_GRAINED_ACCESS_CONTROL"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basicTaxonomy = new Gcp.DataCatalog.Taxonomy("basic_taxonomy", new()
/// {
/// DisplayName = "my_taxonomy",
/// Description = "A collection of policy tags",
/// ActivatedPolicyTypes = new[]
/// {
/// "FINE_GRAINED_ACCESS_CONTROL",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datacatalog.NewTaxonomy(ctx, "basic_taxonomy", &datacatalog.TaxonomyArgs{
/// DisplayName: pulumi.String("my_taxonomy"),
/// Description: pulumi.String("A collection of policy tags"),
/// ActivatedPolicyTypes: pulumi.StringArray{
/// pulumi.String("FINE_GRAINED_ACCESS_CONTROL"),
/// },
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
/// import com.pulumi.gcp.datacatalog.Taxonomy;
/// import com.pulumi.gcp.datacatalog.TaxonomyArgs;
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
/// var basicTaxonomy = new Taxonomy("basicTaxonomy", TaxonomyArgs.builder()
/// .displayName("my_taxonomy")
/// .description("A collection of policy tags")
/// .activatedPolicyTypes("FINE_GRAINED_ACCESS_CONTROL")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basicTaxonomy:
/// type: gcp:datacatalog:Taxonomy
/// name: basic_taxonomy
/// properties:
/// displayName: my_taxonomy
/// description: A collection of policy tags
/// activatedPolicyTypes:
/// - FINE_GRAINED_ACCESS_CONTROL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Taxonomy can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Taxonomy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/taxonomy:Taxonomy default {{name}}
/// ```
class Taxonomy extends CustomResource {
  /// A list of policy types that are activated for this taxonomy. If not set,
  /// defaults to an empty list.
  /// Each value may be one of: `POLICY_TYPE_UNSPECIFIED`, `FINE_GRAINED_ACCESS_CONTROL`.
  late final Output<List<String>?> activatedPolicyTypes;

  /// Description of this taxonomy. It must: contain only unicode characters,
  /// tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes
  /// long when encoded in UTF-8. If not set, defaults to an empty description.
  late final Output<String?> description;

  /// User defined name of this taxonomy.
  /// The taxonomy display name must be unique within an organization.
  /// It must: contain only unicode letters, numbers, underscores, dashes
  /// and spaces; not start or end with spaces; and be at most 200 bytes
  /// long when encoded in UTF-8.
  late final Output<String> displayName;

  /// Resource name of this taxonomy, whose format is:
  /// "projects/{project}/locations/{region}/taxonomies/{taxonomy}".
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Taxonomy location region.
  late final Output<String> region;

  Taxonomy(
    String name, {
    TaxonomyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/taxonomy:Taxonomy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activatedPolicyTypes =
        registerOutput<List<String>?>('activatedPolicyTypes');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
