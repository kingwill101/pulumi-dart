// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The connection state.
class ConnectionPropertiesPrivateLinkServiceConnectionState {
  /// Actions required for a private endpoint connection.
  final pulumi.Input<String>? actionsRequired;
  /// The description for the current state of a private endpoint connection.
  final pulumi.Input<String> description;
  /// The status of a private endpoint connection.
  final pulumi.Input<String> status;

  /// Creates a new [ConnectionPropertiesPrivateLinkServiceConnectionState].
  /// [actionsRequired] Actions required for a private endpoint connection.
  /// [description] The description for the current state of a private endpoint connection.
  /// [status] The status of a private endpoint connection.
  ConnectionPropertiesPrivateLinkServiceConnectionState({
    this.actionsRequired,
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': description,
      'status': status,
    };
  }

  factory ConnectionPropertiesPrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionPropertiesPrivateLinkServiceConnectionState(
      actionsRequired: (() { final guardedValue = map['actionsRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

