// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the health state of a resource.
class ResourceHealthStatusResponse {
  /// The timestamp (RFC3339) when the health status last changed.
  final pulumi.Input<String> lastTransitionTime;
  /// The timestamp (RFC3339) when the health status was last updated, even if the status did not change.
  final pulumi.Input<String> lastUpdateTime;
  /// A human-readable message describing the last transition.
  final pulumi.Input<String> message;
  /// Unique, CamelCase reason code describing the cause of the last health state transition.
  final pulumi.Input<String> reasonCode;
  /// The high-level health status of the resource.
  final pulumi.Input<String> status;

  /// Creates a new [ResourceHealthStatusResponse].
  /// [lastTransitionTime] The timestamp (RFC3339) when the health status last changed.
  /// [lastUpdateTime] The timestamp (RFC3339) when the health status was last updated, even if the status did not change.
  /// [message] A human-readable message describing the last transition.
  /// [reasonCode] Unique, CamelCase reason code describing the cause of the last health state transition.
  /// [status] The high-level health status of the resource.
  const ResourceHealthStatusResponse({
    required this.lastTransitionTime,
    required this.lastUpdateTime,
    required this.message,
    required this.reasonCode,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': lastTransitionTime,
      'lastUpdateTime': lastUpdateTime,
      'message': message,
      'reasonCode': reasonCode,
      'status': status,
    };
  }

  factory ResourceHealthStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResourceHealthStatusResponse(
      lastTransitionTime: pulumi.Input.fromValue(map['lastTransitionTime'] as String),
      lastUpdateTime: pulumi.Input.fromValue(map['lastUpdateTime'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      reasonCode: pulumi.Input.fromValue(map['reasonCode'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
