// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private link service connection state.
class PrivateLinkServiceConnectionState {
  /// Whether there is further actions.
  final pulumi.Input<String>? actionsRequired;
  /// The optional description of the status.
  final pulumi.Input<String>? description;
  /// The concrete private link service connection.
  final pulumi.Input<String> status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionsRequired] Whether there is further actions.
  /// [description] The optional description of the status.
  /// [status] The concrete private link service connection.
  const PrivateLinkServiceConnectionState({
    this.actionsRequired,
    this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': ?description,
      'status': status,
    };
  }

  factory PrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionState(
      actionsRequired: (() { final guardedValue = map['actionsRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
