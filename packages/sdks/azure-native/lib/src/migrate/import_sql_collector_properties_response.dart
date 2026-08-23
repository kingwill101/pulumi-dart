// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Import SQL Collector properties class.
class ImportSqlCollectorPropertiesResponse {
  /// When was import SQL collector first created.
  final pulumi.Input<String> createdTimestamp;
  /// The sql db extended details.
  final pulumi.Input<String>? discoverySiteId;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// When was import SQL collector last updated.
  final pulumi.Input<String> updatedTimestamp;

  /// Creates a new [ImportSqlCollectorPropertiesResponse].
  /// [createdTimestamp] When was import SQL collector first created.
  /// [discoverySiteId] The sql db extended details.
  /// [provisioningState] The status of the last operation.
  /// [updatedTimestamp] When was import SQL collector last updated.
  const ImportSqlCollectorPropertiesResponse({
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
      createdTimestamp: pulumi.Input.fromValue(map['createdTimestamp'] as String),
      discoverySiteId: (() { final guardedValue = map['discoverySiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      updatedTimestamp: pulumi.Input.fromValue(map['updatedTimestamp'] as String),
    );
  }
}
