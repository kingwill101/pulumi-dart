// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportCollectorPropertiesResponse {
  final pulumi.Input<String> createdTimestamp;
  final pulumi.Input<String>? discoverySiteId;
  final pulumi.Input<String> updatedTimestamp;

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
      createdTimestamp: (map['createdTimestamp'] as String).input(),
      discoverySiteId: map['discoverySiteId'] == null ? null : (map['discoverySiteId']! as String).input(),
      updatedTimestamp: (map['updatedTimestamp'] as String).input(),
    );
  }
}

