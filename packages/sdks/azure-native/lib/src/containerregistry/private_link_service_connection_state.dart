// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of a private link service connection.
class PrivateLinkServiceConnectionState {
  /// A message indicating if changes on the service provider require any updates on the consumer.
  final pulumi.Input<dynamic>? actionsRequired;
  /// The description for connection status. For example if connection is rejected it can indicate reason for rejection.
  final pulumi.Input<String?>? description;
  /// The private link service connection status.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionsRequired] A message indicating if changes on the service provider require any updates on the consumer.
  /// [description] The description for connection status. For example if connection is rejected it can indicate reason for rejection.
  /// [status] The private link service connection status.
  const PrivateLinkServiceConnectionState({
    this.actionsRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': ?description,
      'status': ?status,
    };
  }

  factory PrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionState(
      actionsRequired: (() { final guardedValue = map['actionsRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
