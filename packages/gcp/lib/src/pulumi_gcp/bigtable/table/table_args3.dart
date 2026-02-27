// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../table_automated_backup_policy/table_automated_backup_policy.dart';
import '../table_column_family/table_column_family.dart';

/// The set of arguments for Table.
class TableArgs3 {
  /// Defines an automated backup policy for a table, specified by Retention Period and Frequency. To _create_ a table with automated backup disabled, either omit the automated_backup_policy argument, or set both Retention Period and Frequency properties to "0". To disable automated backup on an _existing_ table that has automated backup enabled, set _both_ Retention Period and Frequency properties to "0". When updating an existing table, to modify the Retention Period or Frequency properties of the resource's automated backup policy, set the respective property to a non-zero value. If the automated_backup_policy argument is not provided in the configuration on update, the resource's automated backup policy will _not_ be modified.
  ///
  /// -----
  final Input<TableAutomatedBackupPolicy>? automatedBackupPolicy;

  /// Duration to retain change stream data for the table. Set to 0 to disable. Must be between 1 and 7 days.
  final Input<String>? changeStreamRetention;

  /// A group of columns within a table which share a common configuration. This can be specified multiple times. Structure is documented below.
  final Input<List<TableColumnFamily>>? columnFamilies;

  /// A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, deletion protection will be set to UNPROTECTED.
  final Input<String>? deletionProtection;

  /// The name of the Bigtable instance.
  final Input<String> instanceName;

  /// The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// Defines the row key schema of a table. To create or update a table with a row key schema, specify this argument.
  /// Note that in-place update is not supported, and any in-place modification to the schema will lead to failure.
  /// To update a schema, please clear it (by omitting the field), and update the resource again with a new schema.\n
  ///
  /// The schema must be a valid JSON encoded string representing a Type's struct protobuf message. Note that for bytes sequence (like delimited_bytes.delimiter)
  /// the delimiter must be base64 encoded. For example, if you want to set a delimiter to a single byte character "#", it should be set to "Iw==", which is the base64 encoding of the byte sequence "#".
  final Input<String>? rowKeySchema;

  /// A list of predefined keys to split the table on.
  /// !> **Warning:** Modifying the `split_keys` of an existing table will cause the provider
  /// to delete/recreate the entire `gcp.bigtable.Table` resource.
  final Input<List<String>>? splitKeys;

  TableArgs3({
    this.automatedBackupPolicy,
    this.changeStreamRetention,
    this.columnFamilies,
    this.deletionProtection,
    required this.instanceName,
    this.name,
    this.project,
    this.rowKeySchema,
    this.splitKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automatedBackupPolicyValue = automatedBackupPolicy;
    if (automatedBackupPolicyValue != null) {
      map['automatedBackupPolicy'] = Input.mapOptionalInputValue<
              TableAutomatedBackupPolicy, Map<String, dynamic>>(
          automatedBackupPolicyValue, (value) => value.toMap());
    }
    final changeStreamRetentionValue = changeStreamRetention;
    if (changeStreamRetentionValue != null) {
      map['changeStreamRetention'] = changeStreamRetentionValue;
    }
    final columnFamiliesValue = columnFamilies;
    if (columnFamiliesValue != null) {
      map['columnFamilies'] = Input.mapOptionalInputValue<
              List<TableColumnFamily>, List<Map<String, dynamic>>>(
          columnFamiliesValue,
          (value) => Input.encodeList<TableColumnFamily, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    map['instanceName'] = instanceName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rowKeySchemaValue = rowKeySchema;
    if (rowKeySchemaValue != null) {
      map['rowKeySchema'] = rowKeySchemaValue;
    }
    final splitKeysValue = splitKeys;
    if (splitKeysValue != null) {
      map['splitKeys'] = splitKeysValue;
    }
    return map;
  }

  factory TableArgs3.fromMap(Map<String, dynamic> map) {
    return TableArgs3(
      automatedBackupPolicy: Input.asOptionalInput<TableAutomatedBackupPolicy>(
          map['automatedBackupPolicy']),
      changeStreamRetention:
          Input.asOptionalInput<String>(map['changeStreamRetention']),
      columnFamilies:
          Input.asOptionalInput<List<TableColumnFamily>>(map['columnFamilies']),
      deletionProtection:
          Input.asOptionalInput<String>(map['deletionProtection']),
      instanceName: Input.asInput<String>(map['instanceName']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rowKeySchema: Input.asOptionalInput<String>(map['rowKeySchema']),
      splitKeys: Input.asOptionalInput<List<String>>(map['splitKeys']),
    );
  }
}
