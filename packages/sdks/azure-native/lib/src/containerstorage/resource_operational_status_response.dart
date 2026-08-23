// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the resource
class ResourceOperationalStatusResponse {
  /// Reason for state.
  final pulumi.Input<String>? message;
  /// state of the resource
  final pulumi.Input<String> state;

  /// Creates a new [ResourceOperationalStatusResponse].
  /// [message] Reason for state.
  /// [state] state of the resource
  const ResourceOperationalStatusResponse({
    this.message,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'state': state,
    };
  }

  factory ResourceOperationalStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResourceOperationalStatusResponse(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
