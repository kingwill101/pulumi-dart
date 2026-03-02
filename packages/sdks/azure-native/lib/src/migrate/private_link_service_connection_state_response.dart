// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// State of a private endpoint connection.
class PrivateLinkServiceConnectionStateResponse {
  /// Actions required on the private endpoint connection.
  final pulumi.Input<String>? actionsRequired;
  /// Description of the private endpoint connection.
  final pulumi.Input<String>? description;
  /// Connection status of the private endpoint connection.
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Actions required on the private endpoint connection.
  /// [description] Description of the private endpoint connection.
  /// [status] Connection status of the private endpoint connection.
  PrivateLinkServiceConnectionStateResponse({
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

  factory PrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStateResponse(
      actionsRequired: map['actionsRequired'] == null ? null : (map['actionsRequired'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

