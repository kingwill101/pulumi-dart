import 'package:pulumi/pulumi.dart' hide Config;
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
    this.catalogId = registerOutput<String>('catalogId');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.expireTime = registerOutput<String>('expireTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
