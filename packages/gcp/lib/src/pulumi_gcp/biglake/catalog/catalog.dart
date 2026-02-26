import 'package:pulumi/pulumi.dart';
import 'catalog_args.dart';

/// Catalogs are top-level containers for Databases and Tables.
///
///
/// To get more information about Catalog, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/biglake/rest/v1/projects.locations.catalogs)
/// * How-to Guides
/// * [Manage open source metadata with BigLake Metastore](https://cloud.google.com/bigquery/docs/manage-open-source-metadata#create_catalogs)
///
/// ## Example Usage
///
/// ### Bigquery Biglake Catalog
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.biglake.Catalog("default", {
/// name: "my_catalog",
/// location: "US",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.biglake.Catalog("default",
/// name="my_catalog",
/// location="US")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.BigLake.Catalog("default", new()
/// {
/// Name = "my_catalog",
/// Location = "US",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := biglake.NewCatalog(ctx, "default", &biglake.CatalogArgs{
/// Name:     pulumi.String("my_catalog"),
/// Location: pulumi.String("US"),
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
/// import com.pulumi.gcp.biglake.Catalog;
/// import com.pulumi.gcp.biglake.CatalogArgs;
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
/// var default_ = new Catalog("default", CatalogArgs.builder()
/// .name("my_catalog")
/// .location("US")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:biglake:Catalog
/// properties:
/// name: my_catalog
/// location: US
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Catalog can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/catalogs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Catalog can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/catalog:Catalog default projects/{{project}}/locations/{{location}}/catalogs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:biglake/catalog:Catalog default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:biglake/catalog:Catalog default {{location}}/{{name}}
/// ```
class Catalog extends CustomResource {
  /// Output only. The creation time of the catalog. A timestamp in RFC3339 UTC
  /// "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits.
  late final Output<String> createTime;

  /// Output only. The deletion time of the catalog. Only set after the catalog
  /// is deleted. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  late final Output<String> deleteTime;

  /// Output only. The time when this catalog is considered expired. Only set
  /// after the catalog is deleted. Only set after the catalog is deleted.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits.
  late final Output<String> expireTime;

  /// The geographic location where the Catalog should reside.
  late final Output<String> location;

  /// The name of the Catalog. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Output only. The last modification time of the catalog. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits.
  late final Output<String> updateTime;

  Catalog(
    String name, {
    CatalogArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/catalog:Catalog',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
