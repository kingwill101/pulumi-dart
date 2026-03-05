// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The current state of a private endpoint connection
class PrivateLinkServiceConnectionState {
  /// Actions required for a private endpoint connection
  final pulumi.Input<String>? actionsRequired;
  /// The description for the current state of a private endpoint connection
  final pulumi.Input<String>? description;
  /// The status of a private endpoint connection
  final pulumi.Input<String> status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionsRequired] Actions required for a private endpoint connection
  /// [description] The description for the current state of a private endpoint connection
  /// [status] The status of a private endpoint connection
  PrivateLinkServiceConnectionState({
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

