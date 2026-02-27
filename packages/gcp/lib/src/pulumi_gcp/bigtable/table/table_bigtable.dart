import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_automated_backup_policy/table_automated_backup_policy.dart';
import '../table_column_family/table_column_family.dart';
import 'table_bigtable_args.dart';

/// Creates a Google Cloud Bigtable table inside an instance. For more information see
/// [the official documentation](https://cloud.google.com/bigtable/) and
/// [API](https://cloud.google.com/bigtable/docs/go/reference).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// -> **Fields affected by import** The following fields can't be read and will show diffs if set in config when imported: `split_keys`
///
/// Bigtable Tables can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance_name}}/tables/{{name}}`
///
/// * `{{project}}/{{instance_name}}/{{name}}`
///
/// * `{{instance_name}}/{{name}}`
///
/// When using the `pulumi import` command, Bigtable Tables can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/table:Table default projects/{{project}}/instances/{{instance_name}}/tables/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/table:Table default {{project}}/{{instance_name}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/table:Table default {{instance_name}}/{{name}}
/// ```
class TableBigtable extends pulumi.CustomResource {
  /// Defines an automated backup policy for a table, specified by Retention Period and Frequency. To _create_ a table with automated backup disabled, either omit the automated_backup_policy argument, or set both Retention Period and Frequency properties to "0". To disable automated backup on an _existing_ table that has automated backup enabled, set _both_ Retention Period and Frequency properties to "0". When updating an existing table, to modify the Retention Period or Frequency properties of the resource's automated backup policy, set the respective property to a non-zero value. If the automated_backup_policy argument is not provided in the configuration on update, the resource's automated backup policy will _not_ be modified.
  ///
  /// -----
  late final pulumi.Output<TableAutomatedBackupPolicy> automatedBackupPolicy;

  /// Duration to retain change stream data for the table. Set to 0 to disable. Must be between 1 and 7 days.
  late final pulumi.Output<String> changeStreamRetention;

  /// A group of columns within a table which share a common configuration. This can be specified multiple times. Structure is documented below.
  late final pulumi.Output<List<TableColumnFamily>?> columnFamilies;

  /// A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, deletion protection will be set to UNPROTECTED.
  late final pulumi.Output<String> deletionProtection;

  /// The name of the Bigtable instance.
  late final pulumi.Output<String> instanceName;

  /// The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Defines the row key schema of a table. To create or update a table with a row key schema, specify this argument.
  /// Note that in-place update is not supported, and any in-place modification to the schema will lead to failure.
  /// To update a schema, please clear it (by omitting the field), and update the resource again with a new schema.\n
  ///
  /// The schema must be a valid JSON encoded string representing a Type's struct protobuf message. Note that for bytes sequence (like delimited_bytes.delimiter)
  /// the delimiter must be base64 encoded. For example, if you want to set a delimiter to a single byte character "#", it should be set to "Iw==", which is the base64 encoding of the byte sequence "#".
  late final pulumi.Output<String?> rowKeySchema;

  /// A list of predefined keys to split the table on.
  /// !> **Warning:** Modifying the `split_keys` of an existing table will cause the provider
  /// to delete/recreate the entire `gcp.bigtable.Table` resource.
  late final pulumi.Output<List<String>?> splitKeys;

  TableBigtable(
    String name, {
    TableBigtableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automatedBackupPolicy =
        registerOutput<TableAutomatedBackupPolicy>('automatedBackupPolicy');
    this.changeStreamRetention =
        registerOutput<String>('changeStreamRetention');
    this.columnFamilies =
        registerOutput<List<TableColumnFamily>?>('columnFamilies');
    this.deletionProtection = registerOutput<String>('deletionProtection');
    this.instanceName = registerOutput<String>('instanceName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rowKeySchema = registerOutput<String?>('rowKeySchema');
    this.splitKeys = registerOutput<List<String>?>('splitKeys');
  }
}
