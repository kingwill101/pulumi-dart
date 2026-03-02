// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of a private link service connection.
class PrivateLinkServiceConnectionStateResponse {
  /// The private link service connection description.
  final pulumi.Input<String>? description;
  /// The private link service connection status.
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateLinkServiceConnectionStateResponse].
  /// [description] The private link service connection description.
  /// [status] The private link service connection status.
  PrivateLinkServiceConnectionStateResponse({
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'status': ?status,
    };
  }

  factory PrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStateResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

