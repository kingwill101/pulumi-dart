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
  ResourceOperationalStatusResponse({
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
      message: map['message'] == null ? null : (map['message']! as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

