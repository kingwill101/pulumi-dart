// ignore_for_file: unused_element, unnecessary_cast


/// Import SQL Collector properties class.
class ImportSqlCollectorPropertiesResponse {
  /// When was import SQL collector first created.
  final String createdTimestamp;
  /// The sql db extended details.
  final String? discoverySiteId;
  /// The status of the last operation.
  final String provisioningState;
  /// When was import SQL collector last updated.
  final String updatedTimestamp;

  /// Creates a new [ImportSqlCollectorPropertiesResponse].
  /// [createdTimestamp] When was import SQL collector first created.
  /// [discoverySiteId] The sql db extended details.
  /// [provisioningState] The status of the last operation.
  /// [updatedTimestamp] When was import SQL collector last updated.
  ImportSqlCollectorPropertiesResponse({
    required this.createdTimestamp,
    this.discoverySiteId,
    required this.provisioningState,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTimestamp': createdTimestamp,
      'discoverySiteId': ?discoverySiteId,
      'provisioningState': provisioningState,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory ImportSqlCollectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ImportSqlCollectorPropertiesResponse(
      createdTimestamp: map['createdTimestamp'] as String,
      discoverySiteId: map['discoverySiteId'] == null ? null : map['discoverySiteId'] as String,
      provisioningState: map['provisioningState'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}

