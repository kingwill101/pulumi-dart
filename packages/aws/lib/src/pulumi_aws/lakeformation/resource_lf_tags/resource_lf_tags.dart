import 'package:pulumi/pulumi.dart';
import '../resource_lf_tags_database/resource_lf_tags_database.dart';
import '../resource_lf_tags_lf_tag/resource_lf_tags_lf_tag.dart';
import '../resource_lf_tags_table/resource_lf_tags_table.dart';
import '../resource_lf_tags_table_with_columns/resource_lf_tags_table_with_columns.dart';
import 'resource_lf_tags_args.dart';

/// Manages an attachment between one or more existing LF-tags and an existing Lake Formation resource.
///
/// ## Example Usage
///
/// ### Database Example
///
///
///
/// ### Multiple Tags Example
class ResourceLfTags extends CustomResource {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  late final Output<String> catalogId;

  /// Configuration block for a database resource. See below.
  late final Output<ResourceLfTagsDatabase> database;

  /// Set of LF-tags to attach to the resource. See below.
  ///
  /// Exactly one of the following is required:
  late final Output<List<ResourceLfTagsLfTag>> lfTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for a table resource. See below.
  late final Output<ResourceLfTagsTable> table;

  /// Configuration block for a table with columns resource. See below.
  ///
  /// The following arguments are optional:
  late final Output<ResourceLfTagsTableWithColumns> tableWithColumns;

  ResourceLfTags(
    String name, {
    ResourceLfTagsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/resourceLfTags:ResourceLfTags',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.database = registerOutput<ResourceLfTagsDatabase>('database');
    this.lfTags = registerOutput<List<ResourceLfTagsLfTag>>('lfTags');
    this.region = registerOutput<String>('region');
    this.table = registerOutput<ResourceLfTagsTable>('table');
    this.tableWithColumns =
        registerOutput<ResourceLfTagsTableWithColumns>('tableWithColumns');
  }
}
