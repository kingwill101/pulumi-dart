// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity source for an Office 365 service.
class Office365SourceResponse {
  /// The groups containing all the users. Type: array of strings (or Expression with resultType array of strings).
  final dynamic allowedGroups;
  /// The Column to apply the <paramref name="StartTime"/> and <paramref name="EndTime"/>. Type: string (or Expression with resultType string).
  final dynamic dateFilterColumn;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// End time of the requested range for this dataset. Type: string (or Expression with resultType string).
  final dynamic endTime;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The columns to be read out from the Office 365 table. Type: array of objects (or Expression with resultType array of objects). itemType: OutputColumn. Example: [ { "name": "Id" }, { "name": "CreatedDateTime" } ]
  final dynamic outputColumns;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Start time of the requested range for this dataset. Type: string (or Expression with resultType string).
  final dynamic startTime;
  /// Copy source type.
  /// Expected value is 'Office365Source'.
  final String type;
  /// The user scope uri. Type: string (or Expression with resultType string).
  final dynamic userScopeFilterUri;

  /// Creates a new [Office365SourceResponse].
  /// [allowedGroups] The groups containing all the users. Type: array of strings (or Expression with resultType array of strings).
  /// [dateFilterColumn] The Column to apply the <paramref name="StartTime"/> and <paramref name="EndTime"/>. Type: string (or Expression with resultType string).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [endTime] End time of the requested range for this dataset. Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [outputColumns] The columns to be read out from the Office 365 table. Type: array of objects (or Expression with resultType array of objects). itemType: OutputColumn. Example: [ { "name": "Id" }, { "name": "CreatedDateTime" } ]
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [startTime] Start time of the requested range for this dataset. Type: string (or Expression with resultType string).
  /// [type] Copy source type.
  /// [userScopeFilterUri] The user scope uri. Type: string (or Expression with resultType string).
  Office365SourceResponse({
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

  factory Office365SourceResponse.fromMap(Map<String, dynamic> map) {
    return Office365SourceResponse(
      allowedGroups: map['allowedGroups'] == null ? null : map['allowedGroups'],
      dateFilterColumn: map['dateFilterColumn'] == null ? null : map['dateFilterColumn'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      endTime: map['endTime'] == null ? null : map['endTime'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      outputColumns: map['outputColumns'] == null ? null : map['outputColumns'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      startTime: map['startTime'] == null ? null : map['startTime'],
      type: map['type'] as String,
      userScopeFilterUri: map['userScopeFilterUri'] == null ? null : map['userScopeFilterUri'],
    );
  }
}

