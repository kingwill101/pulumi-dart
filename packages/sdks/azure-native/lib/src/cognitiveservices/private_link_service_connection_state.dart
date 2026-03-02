// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A collection of information about the state of the connection between service consumer and provider.
class PrivateLinkServiceConnectionState {
  /// A message indicating if changes on the service provider require any updates on the consumer.
  final pulumi.Input<String>? actionsRequired;
  /// The reason for approval/rejection of the connection.
  final pulumi.Input<String>? description;
  /// Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionsRequired] A message indicating if changes on the service provider require any updates on the consumer.
  /// [description] The reason for approval/rejection of the connection.
  /// [status] Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  PrivateLinkServiceConnectionState({
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
      actionsRequired: map['actionsRequired'] == null ? null : (map['actionsRequired']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

