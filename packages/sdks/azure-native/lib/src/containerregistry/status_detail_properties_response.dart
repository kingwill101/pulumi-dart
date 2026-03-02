// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status detail properties of the connected registry.
class StatusDetailPropertiesResponse {
  /// The code of the status.
  final pulumi.Input<String> code;
  /// The correlation ID of the status.
  final pulumi.Input<String> correlationId;
  /// The description of the status.
  final pulumi.Input<String> description;
  /// The timestamp of the status.
  final pulumi.Input<String> timestamp;
  /// The component of the connected registry corresponding to the status.
  final pulumi.Input<String> type;

  /// Creates a new [StatusDetailPropertiesResponse].
  /// [code] The code of the status.
  /// [correlationId] The correlation ID of the status.
  /// [description] The description of the status.
  /// [timestamp] The timestamp of the status.
  /// [type] The component of the connected registry corresponding to the status.
  StatusDetailPropertiesResponse({
    required this.code,
    required this.correlationId,
    required this.description,
    required this.timestamp,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'correlationId': correlationId,
      'description': description,
      'timestamp': timestamp,
      'type': type,
    };
  }

  factory StatusDetailPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StatusDetailPropertiesResponse(
      code: (map['code'] as String).input(),
      correlationId: (map['correlationId'] as String).input(),
      description: (map['description'] as String).input(),
      timestamp: (map['timestamp'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

