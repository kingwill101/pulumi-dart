import 'package:pulumi/pulumi.dart' as pulumi;
import '../resource_lf_tag_database/resource_lf_tag_database.dart';
import '../resource_lf_tag_lf_tag/resource_lf_tag_lf_tag.dart';
import '../resource_lf_tag_table/resource_lf_tag_table.dart';
import '../resource_lf_tag_table_with_columns/resource_lf_tag_table_with_columns.dart';
import '../resource_lf_tag_timeouts/resource_lf_tag_timeouts.dart';
import 'resource_lf_tag_args.dart';

/// Resource for managing an AWS Lake Formation Resource LF Tag.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// You cannot import this resource.
class ResourceLfTag extends pulumi.CustomResource {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  late final pulumi.Output<String?> catalogId;

  /// Configuration block for a database resource. See Database for more details.
  late final pulumi.Output<ResourceLfTagDatabase?> database;

  /// Set of LF-tags to attach to the resource. See LF Tag for more details.
  ///
  /// Exactly one of the following is required:
  late final pulumi.Output<ResourceLfTagLfTag> lfTag;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for a table resource. See Table for more details.
  late final pulumi.Output<ResourceLfTagTable?> table;

  /// Configuration block for a table with columns resource. See Table With Columns for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ResourceLfTagTableWithColumns?> tableWithColumns;
  late final pulumi.Output<ResourceLfTagTimeouts?> timeouts;

  ResourceLfTag(
    String name, {
    ResourceLfTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/resourceLfTag:ResourceLfTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String?>('catalogId');
    this.database = registerOutput<ResourceLfTagDatabase?>('database');
    this.lfTag = registerOutput<ResourceLfTagLfTag>('lfTag');
    this.region = registerOutput<String>('region');
    this.table = registerOutput<ResourceLfTagTable?>('table');
    this.tableWithColumns =
        registerOutput<ResourceLfTagTableWithColumns?>('tableWithColumns');
    this.timeouts = registerOutput<ResourceLfTagTimeouts?>('timeouts');
  }
}
