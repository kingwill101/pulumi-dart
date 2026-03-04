// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_databricks_delta_lake_export_command.dart';

/// A copy activity Azure Databricks Delta Lake source.
class AzureDatabricksDeltaLakeSource {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;

  /// Azure Databricks Delta Lake export settings.
  final pulumi.Input<AzureDatabricksDeltaLakeExportCommand>? exportSettings;

  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;

  /// Azure Databricks Delta Lake Sql query. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? query;

  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;

  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;

  /// Copy source type.
  /// Expected value is 'AzureDatabricksDeltaLakeSource'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureDatabricksDeltaLakeSource].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [exportSettings] Azure Databricks Delta Lake export settings.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [query] Azure Databricks Delta Lake Sql query. Type: string (or Expression with resultType string).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  AzureDatabricksDeltaLakeSource({
    this.disableMetricsCollection,
    this.exportSettings,
    this.maxConcurrentConnections,
    this.query,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'exportSettings':
          ?pulumi.Input.mapOptionalInputValue<
            AzureDatabricksDeltaLakeExportCommand,
            Map<String, dynamic>
          >(exportSettings, (value) => value.toMap()),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'query': ?query,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory AzureDatabricksDeltaLakeSource.fromMap(Map<String, dynamic> map) {
    return AzureDatabricksDeltaLakeSource(
      disableMetricsCollection: (() {
        final guardedValue = map['disableMetricsCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      exportSettings: (() {
        final guardedValue = map['exportSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureDatabricksDeltaLakeExportCommand.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxConcurrentConnections: (() {
        final guardedValue = map['maxConcurrentConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      query: (() {
        final guardedValue = map['query'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sourceRetryCount: (() {
        final guardedValue = map['sourceRetryCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sourceRetryWait: (() {
        final guardedValue = map['sourceRetryWait'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
