import 'package:pulumi/pulumi.dart';
import '../configured_table_table_reference/configured_table_table_reference.dart';
import 'configured_table_args.dart';

/// Provides a AWS Clean Rooms configured table. Configured tables are used to represent references to existing tables in the AWS Glue Data Catalog.
///
/// ## Example Usage
///
/// ### Configured table with tags
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the cleanrooms configured table.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.cleanrooms.ConfiguredTable` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cleanrooms/configuredTable:ConfiguredTable table 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class ConfiguredTable extends CustomResource {
  /// The columns of the references table which will be included in the configured table.
  late final Output<List<String>> allowedColumns;

  /// The analysis method for the configured table. The only valid value is currently `DIRECT_QUERY`.
  late final Output<String> analysisMethod;

  /// The ARN of the configured table.
  late final Output<String> arn;

  /// The date and time the configured table was created.
  late final Output<String> createTime;

  /// A description for the configured table.
  late final Output<String?> description;

  /// The name of the configured table.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A reference to the AWS Glue table which will be used to create the configured table.
  /// * `table_reference.database_name` - (Required - Forces new resource) - The name of the AWS Glue database which contains the table.
  /// * `table_reference.table_name` - (Required - Forces new resource) - The name of the AWS Glue table which will be used to create the configured table.
  late final Output<ConfiguredTableTableReference> tableReference;

  /// Key value pairs which tag the configured table.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The date and time the configured table was last updated.
  late final Output<String> updateTime;

  ConfiguredTable(
    String name, {
    ConfiguredTableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cleanrooms/configuredTable:ConfiguredTable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedColumns = registerOutput<List<String>>('allowedColumns');
    this.analysisMethod = registerOutput<String>('analysisMethod');
    this.arn = registerOutput<String>('arn');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tableReference =
        registerOutput<ConfiguredTableTableReference>('tableReference');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
