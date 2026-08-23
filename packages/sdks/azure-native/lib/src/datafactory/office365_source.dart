// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity source for an Office 365 service.
class Office365Source {
  /// The groups containing all the users. Type: array of strings (or Expression with resultType array of strings).
  final pulumi.Input<dynamic>? allowedGroups;
  /// The Column to apply the &lt;paramref name="StartTime"/&gt; and &lt;paramref name="EndTime"/&gt;. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? dateFilterColumn;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// End time of the requested range for this dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? endTime;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// The columns to be read out from the Office 365 table. Type: array of objects (or Expression with resultType array of objects). itemType: OutputColumn. Example: [ { "name": "Id" }, { "name": "CreatedDateTime" } ]
  final pulumi.Input<dynamic>? outputColumns;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Start time of the requested range for this dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? startTime;
  /// Copy source type.
  /// Expected value is 'Office365Source'.
  final pulumi.Input<String> type;
  /// The user scope uri. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userScopeFilterUri;

  /// Creates a new [Office365Source].
  /// [allowedGroups] The groups containing all the users. Type: array of strings (or Expression with resultType array of strings).
  /// [dateFilterColumn] The Column to apply the &lt;paramref name="StartTime"/&gt; and &lt;paramref name="EndTime"/&gt;. Type: string (or Expression with resultType string).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [endTime] End time of the requested range for this dataset. Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [outputColumns] The columns to be read out from the Office 365 table. Type: array of objects (or Expression with resultType array of objects). itemType: OutputColumn. Example: [ { "name": "Id" }, { "name": "CreatedDateTime" } ]
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [startTime] Start time of the requested range for this dataset. Type: string (or Expression with resultType string).
  /// [type] Copy source type.
  /// [userScopeFilterUri] The user scope uri. Type: string (or Expression with resultType string).
  const Office365Source({
    this.allowedGroups,
    this.dateFilterColumn,
    this.disableMetricsCollection,
    this.endTime,
    this.maxConcurrentConnections,
    this.outputColumns,
    this.sourceRetryCount,
    this.sourceRetryWait,
    this.startTime,
    required this.type,
    this.userScopeFilterUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedGroups': ?allowedGroups,
      'dateFilterColumn': ?dateFilterColumn,
      'disableMetricsCollection': ?disableMetricsCollection,
      'endTime': ?endTime,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'outputColumns': ?outputColumns,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'startTime': ?startTime,
      'type': type,
      'userScopeFilterUri': ?userScopeFilterUri,
    };
  }

  factory Office365Source.fromMap(Map<String, dynamic> map) {
    return Office365Source(
      allowedGroups: (() { final guardedValue = map['allowedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dateFilterColumn: (() { final guardedValue = map['dateFilterColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      outputColumns: (() { final guardedValue = map['outputColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryCount: (() { final guardedValue = map['sourceRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryWait: (() { final guardedValue = map['sourceRetryWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userScopeFilterUri: (() { final guardedValue = map['userScopeFilterUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
