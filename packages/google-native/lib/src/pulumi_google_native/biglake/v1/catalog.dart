import 'package:pulumi/pulumi.dart';
import 'catalog_args.dart';

/// Creates a new catalog.
/// Auto-naming is currently not supported for this resource.
class Catalog extends CustomResource {
  /// Required. The ID to use for the catalog, which will become the final component of the catalog's resource name.
  late final Output<String> catalogId;

  /// The creation time of the catalog.
  late final Output<String> createTime;

  /// The deletion time of the catalog. Only set after the catalog is deleted.
  late final Output<String> deleteTime;

  /// The time when this catalog is considered expired. Only set after the catalog is deleted.
  late final Output<String> expireTime;
  late final Output<String> location;

  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  late final Output<String> name;
  late final Output<String> project;

  /// The last modification time of the catalog.
  late final Output<String> updateTime;

  Catalog(
    String name, {
    CatalogArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:biglake/v1:Catalog',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
