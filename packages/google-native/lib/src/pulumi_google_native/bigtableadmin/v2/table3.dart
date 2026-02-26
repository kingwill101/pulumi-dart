import 'package:pulumi/pulumi.dart';
import 'change_stream_config_response.dart';
import 'restore_info_response.dart';
import 'table_args3.dart';
import 'table_stats_response.dart';

/// Creates a new table in the specified instance. The table can be created with a full set of initial column families, specified in the request.
class Table3 extends CustomResource {
  /// If specified, enable the change stream on this table. Otherwise, the change stream is disabled and the change stream is not retained.
  late final Output<ChangeStreamConfigResponse> changeStreamConfig;

  /// Map from cluster ID to per-cluster table state. If it could not be determined whether or not the table has data in a particular cluster (for example, if its zone is unavailable), then there will be an entry for the cluster with UNKNOWN `replication_status`. Views: `REPLICATION_VIEW`, `ENCRYPTION_VIEW`, `FULL`
  late final Output<Map<String, String>> clusterStates;

  /// The column families configured for this table, mapped by column family ID. Views: `SCHEMA_VIEW`, `STATS_VIEW`, `FULL`
  late final Output<Map<String, String>> columnFamilies;

  /// Set to true to make the table protected against data loss. i.e. deleting the following resources through Admin APIs are prohibited: * The table. * The column families in the table. * The instance containing the table. Note one can still delete the data stored in the table through Data APIs.
  late final Output<bool> deletionProtection;

  /// Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to `MILLIS`. Views: `SCHEMA_VIEW`, `FULL`.
  late final Output<String> granularity;
  late final Output<String> instanceId;

  /// The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
  late final Output<String> name;
  late final Output<String> project;

  /// If this table was restored from another data source (e.g. a backup), this field will be populated with information about the restore.
  late final Output<RestoreInfoResponse> restoreInfo;

  /// Only available with STATS_VIEW, this includes summary statistics about the entire table contents. For statistics about a specific column family, see ColumnFamilyStats in the mapped ColumnFamily collection above.
  late final Output<TableStatsResponse> stats;

  Table3(
    String name, {
    TableArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigtableadmin/v2:Table',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.changeStreamConfig =
        Output.createUnknown<ChangeStreamConfigResponse>();
    this.clusterStates = Output.createUnknown<Map<String, String>>();
    this.columnFamilies = Output.createUnknown<Map<String, String>>();
    this.deletionProtection = Output.createUnknown<bool>();
    this.granularity = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.restoreInfo = Output.createUnknown<RestoreInfoResponse>();
    this.stats = Output.createUnknown<TableStatsResponse>();
  }
}
