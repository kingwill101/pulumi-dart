// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'redshift_unload_settings.dart';

/// A copy activity source for Amazon Redshift Source.
class AmazonRedshiftSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;

  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;

  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;

  /// Database query. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? query;

  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;

  /// The Amazon S3 settings needed for the interim Amazon S3 when copying from Amazon Redshift with unload. With this, data from Amazon Redshift source will be unloaded into S3 first and then copied into the targeted sink from the interim S3.
  final pulumi.Input<RedshiftUnloadSettings>? redshiftUnloadSettings;

  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;

  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;

  /// Copy source type.
  /// Expected value is 'AmazonRedshiftSource'.
  final pulumi.Input<String> type;

  /// Creates a new [AmazonRedshiftSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [query] Database query. Type: string (or Expression with resultType string).
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [redshiftUnloadSettings] The Amazon S3 settings needed for the interim Amazon S3 when copying from Amazon Redshift with unload. With this, data from Amazon Redshift source will be unloaded into S3 first and then copied into the targeted sink from the interim S3.
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  AmazonRedshiftSource({
    this.additionalColumns,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.query,
    this.queryTimeout,
    this.redshiftUnloadSettings,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'query': ?query,
      'queryTimeout': ?queryTimeout,
      'redshiftUnloadSettings':
          ?pulumi.Input.mapOptionalInputValue<
            RedshiftUnloadSettings,
            Map<String, dynamic>
          >(redshiftUnloadSettings, (value) => value.toMap()),
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory AmazonRedshiftSource.fromMap(Map<String, dynamic> map) {
    return AmazonRedshiftSource(
      additionalColumns: (() {
        final guardedValue = map['additionalColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      disableMetricsCollection: (() {
        final guardedValue = map['disableMetricsCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
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
      queryTimeout: (() {
        final guardedValue = map['queryTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      redshiftUnloadSettings: (() {
        final guardedValue = map['redshiftUnloadSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RedshiftUnloadSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
