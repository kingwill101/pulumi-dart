// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_stream_config.dart';
import 'split.dart';
import 'table_granularity.dart';

/// The set of arguments for Table.
class TableBigtableadminV2Args {
  /// If specified, enable the change stream on this table. Otherwise, the change stream is disabled and the change stream is not retained.
  final pulumi.Input<ChangeStreamConfig>? changeStreamConfig;

  /// The column families configured for this table, mapped by column family ID. Views: `SCHEMA_VIEW`, `STATS_VIEW`, `FULL`
  final pulumi.Input<Map<String, String>>? columnFamilies;

  /// Set to true to make the table protected against data loss. i.e. deleting the following resources through Admin APIs are prohibited: * The table. * The column families in the table. * The instance containing the table. Note one can still delete the data stored in the table through Data APIs.
  final pulumi.Input<bool>? deletionProtection;

  /// Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to `MILLIS`. Views: `SCHEMA_VIEW`, `FULL`.
  final pulumi.Input<TableGranularity>? granularity;

  /// The optional list of row keys that will be used to initially split the table into several tablets (tablets are similar to HBase regions). Given two split keys, `s1` and `s2`, three tablets will be created, spanning the key ranges: `[, s1), [s1, s2), [s2, )`. Example: * Row keys := `["a", "apple", "custom", "customer_1", "customer_2",` `"other", "zz"]` * initial_split_keys := `["apple", "customer_1", "customer_2", "other"]` * Key assignment: - Tablet 1 `[, apple) => {"a"}.` - Tablet 2 `[apple, customer_1) => {"apple", "custom"}.` - Tablet 3 `[customer_1, customer_2) => {"customer_1"}.` - Tablet 4 `[customer_2, other) => {"customer_2"}.` - Tablet 5 `[other, ) => {"other", "zz"}.`
  final pulumi.Input<List<Split>>? initialSplits;
  final pulumi.Input<String> instanceId;

  /// The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The name by which the new table should be referred to within the parent instance, e.g., `foobar` rather than `{parent}/tables/foobar`. Maximum 50 characters.
  final pulumi.Input<String> tableId;

  TableBigtableadminV2Args({
    this.changeStreamConfig,
    this.columnFamilies,
    this.deletionProtection,
    this.granularity,
    this.initialSplits,
    required this.instanceId,
    this.name,
    this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final changeStreamConfigValue = changeStreamConfig;
    if (changeStreamConfigValue != null) {
      map['changeStreamConfig'] = pulumi.Input.mapOptionalInputValue<
              ChangeStreamConfig, Map<String, dynamic>>(
          changeStreamConfigValue, (value) => value.toMap());
    }
    final columnFamiliesValue = columnFamilies;
    if (columnFamiliesValue != null) {
      map['columnFamilies'] = columnFamiliesValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final granularityValue = granularity;
    if (granularityValue != null) {
      map['granularity'] =
          pulumi.Input.mapOptionalInputValue<TableGranularity, String>(
              granularityValue, (value) => value.value);
    }
    final initialSplitsValue = initialSplits;
    if (initialSplitsValue != null) {
      map['initialSplits'] = pulumi.Input.mapOptionalInputValue<List<Split>,
              List<Map<String, dynamic>>>(
          initialSplitsValue,
          (value) => pulumi.Input.encodeList<Split, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tableId'] = tableId;
    return map;
  }

  factory TableBigtableadminV2Args.fromMap(Map<String, dynamic> map) {
    return TableBigtableadminV2Args(
      changeStreamConfig: pulumi.Input.asOptionalInput<ChangeStreamConfig>(
          map['changeStreamConfig']),
      columnFamilies: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['columnFamilies']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      granularity:
          pulumi.Input.asOptionalInput<TableGranularity>(map['granularity']),
      initialSplits:
          pulumi.Input.asOptionalInput<List<Split>>(map['initialSplits']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tableId: pulumi.Input.asInput<String>(map['tableId']),
    );
  }
}
