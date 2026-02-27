import 'package:pulumi/pulumi.dart' as pulumi;
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
///
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
class Catalog extends pulumi.CustomResource {
  /// Output only. The creation time of the catalog. A timestamp in RFC3339 UTC
  /// "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits.
  late final pulumi.Output<String> createTime;

  /// Output only. The deletion time of the catalog. Only set after the catalog
  /// is deleted. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  late final pulumi.Output<String> deleteTime;

  /// Output only. The time when this catalog is considered expired. Only set
  /// after the catalog is deleted. Only set after the catalog is deleted.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits.
  late final pulumi.Output<String> expireTime;

  /// The geographic location where the Catalog should reside.
  late final pulumi.Output<String> location;

  /// The name of the Catalog. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Output only. The last modification time of the catalog. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits.
  late final pulumi.Output<String> updateTime;

  Catalog(
    String name, {
    CatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/catalog:Catalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.expireTime = registerOutput<String>('expireTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
