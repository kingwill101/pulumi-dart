// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents Private link service connection state.
class PrivateLinkServiceConnectionState {
  /// Gets or sets actions required.
  final pulumi.Input<String>? actionsRequired;
  /// Gets or sets description.
  final pulumi.Input<String>? description;
  /// Gets or sets the status.
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionsRequired] Gets or sets actions required.
  /// [description] Gets or sets description.
  /// [status] Gets or sets the status.
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

