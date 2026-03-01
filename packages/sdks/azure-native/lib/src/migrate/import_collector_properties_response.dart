// ignore_for_file: unused_element, unnecessary_cast


class ImportCollectorPropertiesResponse {
  final String createdTimestamp;
  final String? discoverySiteId;
  final String updatedTimestamp;

  /// Creates a new [ImportCollectorPropertiesResponse].
  /// [createdTimestamp] Required.
  /// [discoverySiteId] Optional.
  /// [updatedTimestamp] Required.
  ImportCollectorPropertiesResponse({
    required this.createdTimestamp,
    this.discoverySiteId,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTimestamp': createdTimestamp,
      'discoverySiteId': ?discoverySiteId,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory ImportCollectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ImportCollectorPropertiesResponse(
      createdTimestamp: map['createdTimestamp'] as String,
      discoverySiteId: map['discoverySiteId'] == null ? null : map['discoverySiteId'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}

