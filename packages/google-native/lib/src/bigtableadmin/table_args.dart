// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_stream_config.dart';
import 'split.dart';
import 'table_granularity.dart';

/// {@template pulumi_bigtableadmin_v2_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_table_args_doc}
class TableArgs {
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

  /// Creates a new [TableArgs].
  /// [changeStreamConfig] If specified, enable the change stream on this table. Otherwise, the change stream is disabled and the change stream is not retained.
  /// [columnFamilies] The column families configured for this table, mapped by column family ID. Views: `SCHEMA_VIEW`, `STATS_VIEW`, `FULL`
  /// [deletionProtection] Set to true to make the table protected against data loss. i.e. deleting the following resources through Admin APIs are prohibited: * The table. * The column families in the table. * The instance containing the table. Note one can still delete the data stored in the table through Data APIs.
  /// [granularity] Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to `MILLIS`. Views: `SCHEMA_VIEW`, `FULL`.
  /// [initialSplits] The optional list of row keys that will be used to initially split the table into several tablets (tablets are similar to HBase regions). Given two split keys, `s1` and `s2`, three tablets will be created, spanning the key ranges: `[, s1), [s1, s2), [s2, )`. Example: * Row keys := `["a", "apple", "custom", "customer_1", "customer_2",` `"other", "zz"]` * initial_split_keys := `["apple", "customer_1", "customer_2", "other"]` * Key assignment: - Tablet 1 `[, apple) => {"a"}.` - Tablet 2 `[apple, customer_1) => {"apple", "custom"}.` - Tablet 3 `[customer_1, customer_2) => {"customer_1"}.` - Tablet 4 `[customer_2, other) => {"customer_2"}.` - Tablet 5 `[other, ) => {"other", "zz"}.`
  /// [instanceId] Required.
  /// [name] The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
  /// [project] Optional.
  /// [tableId] The name by which the new table should be referred to within the parent instance, e.g., `foobar` rather than `{parent}/tables/foobar`. Maximum 50 characters.
  TableArgs({
    ChangeStreamConfig? changeStreamConfig,
    Map<String, String>? columnFamilies,
    bool? deletionProtection,
    TableGranularity? granularity,
    List<Split>? initialSplits,
    required String instanceId,
    String? name,
    String? project,
    required String tableId,
  }) : changeStreamConfig = pulumi.Input.asOptionalInput<ChangeStreamConfig>(
         changeStreamConfig,
       ),
       columnFamilies = pulumi.Input.asOptionalInput<Map<String, String>>(
         columnFamilies,
       ),
       deletionProtection = pulumi.Input.asOptionalInput<bool>(
         deletionProtection,
       ),
       granularity = pulumi.Input.asOptionalInput<TableGranularity>(
         granularity,
       ),
       initialSplits = pulumi.Input.asOptionalInput<List<Split>>(initialSplits),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       tableId = pulumi.Input.asInput<String>(tableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeStreamConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ChangeStreamConfig,
            Map<String, dynamic>
          >(changeStreamConfig, (value) => value.toMap()),
      'columnFamilies': ?columnFamilies,
      'deletionProtection': ?deletionProtection,
      'granularity':
          ?pulumi.Input.mapOptionalInputValue<TableGranularity, String>(
            granularity,
            (value) => value.value,
          ),
      'initialSplits':
          ?pulumi.Input.mapOptionalInputValue<
            List<Split>,
            List<Map<String, dynamic>>
          >(
            initialSplits,
            (value) => pulumi.Input.encodeList<Split, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'instanceId': instanceId,
      'name': ?name,
      'project': ?project,
      'tableId': tableId,
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      changeStreamConfig: map['changeStreamConfig'] == null
          ? null
          : ChangeStreamConfig.fromMap(
              (map['changeStreamConfig'] as Map).cast<String, dynamic>(),
            ),
      columnFamilies: map['columnFamilies'] == null
          ? null
          : (map['columnFamilies'] as Map).cast<String, String>(),
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      granularity: map['granularity'] == null
          ? null
          : TableGranularity.fromValue(map['granularity'] as String),
      initialSplits: map['initialSplits'] == null
          ? null
          : pulumi.Input.decodeList<Split>(
              map['initialSplits'],
              (value) => Split.fromMap((value as Map).cast<String, dynamic>()),
            ),
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
