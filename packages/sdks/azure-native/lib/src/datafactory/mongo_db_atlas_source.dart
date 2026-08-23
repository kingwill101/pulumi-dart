// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_cursor_methods_properties.dart';

/// A copy activity source for a MongoDB Atlas database.
class MongoDbAtlasSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// Specifies the number of documents to return in each batch of the response from MongoDB Atlas instance. In most cases, modifying the batch size will not affect the user or the application. This property's main purpose is to avoid hit the limitation of response size. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? batchSize;
  /// Cursor methods for Mongodb query
  final pulumi.Input<MongoDbCursorMethodsProperties>? cursorMethods;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// Specifies selection filter using query operators. To return all documents in a collection, omit this parameter or pass an empty document ({}). Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? filter;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'MongoDbAtlasSource'.
  final pulumi.Input<String> type;

  /// Creates a new [MongoDbAtlasSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [batchSize] Specifies the number of documents to return in each batch of the response from MongoDB Atlas instance. In most cases, modifying the batch size will not affect the user or the application. This property's main purpose is to avoid hit the limitation of response size. Type: integer (or Expression with resultType integer).
  /// [cursorMethods] Cursor methods for Mongodb query
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [filter] Specifies selection filter using query operators. To return all documents in a collection, omit this parameter or pass an empty document ({}). Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  const MongoDbAtlasSource({
    this.additionalColumns,
    this.batchSize,
    this.cursorMethods,
    this.disableMetricsCollection,
    this.filter,
    this.maxConcurrentConnections,
    this.queryTimeout,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'batchSize': ?batchSize,
      'cursorMethods': ?pulumi.Input.mapOptionalInputValue<MongoDbCursorMethodsProperties, Map<String, dynamic>>(cursorMethods, (value) => value.toMap()),
      'disableMetricsCollection': ?disableMetricsCollection,
      'filter': ?filter,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory MongoDbAtlasSource.fromMap(Map<String, dynamic> map) {
    return MongoDbAtlasSource(
      additionalColumns: (() { final guardedValue = map['additionalColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      cursorMethods: (() { final guardedValue = map['cursorMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoDbCursorMethodsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      queryTimeout: (() { final guardedValue = map['queryTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryCount: (() { final guardedValue = map['sourceRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryWait: (() { final guardedValue = map['sourceRetryWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
