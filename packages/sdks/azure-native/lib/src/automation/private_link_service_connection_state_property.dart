// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection State of the Private Endpoint Connection.
class PrivateLinkServiceConnectionStateProperty {
  /// The private link service connection description.
  final pulumi.Input<String?>? description;
  /// The private link service connection status.
  final pulumi.Input<String?>? status;

  /// Creates a new [PrivateLinkServiceConnectionStateProperty].
  /// [description] The private link service connection description.
  /// [status] The private link service connection status.
  const PrivateLinkServiceConnectionStateProperty({
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'status': ?status,
    };
  }

  factory PrivateLinkServiceConnectionStateProperty.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStateProperty(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
