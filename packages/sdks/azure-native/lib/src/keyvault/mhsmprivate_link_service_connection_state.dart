// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An object that represents the approval state of the private link connection.
class MHSMPrivateLinkServiceConnectionState {
  /// A message indicating if changes on the service provider require any updates on the consumer.
  final pulumi.Input<String>? actionsRequired;
  /// The reason for approval or rejection.
  final pulumi.Input<String>? description;
  /// Indicates whether the connection has been approved, rejected or removed by the key vault owner.
  final pulumi.Input<String>? status;

  /// Creates a new [MHSMPrivateLinkServiceConnectionState].
  /// [actionsRequired] A message indicating if changes on the service provider require any updates on the consumer.
  /// [description] The reason for approval or rejection.
  /// [status] Indicates whether the connection has been approved, rejected or removed by the key vault owner.
  MHSMPrivateLinkServiceConnectionState({
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

  factory MHSMPrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return MHSMPrivateLinkServiceConnectionState(
      actionsRequired: map['actionsRequired'] == null ? null : (map['actionsRequired'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

