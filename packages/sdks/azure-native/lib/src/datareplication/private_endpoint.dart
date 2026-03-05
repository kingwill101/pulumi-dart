// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represent private Endpoint network resource that is linked to the Private Endpoint connection.
class PrivateEndpoint {
  /// Gets or sets the id.
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpoint].
  /// [id] Gets or sets the id.
  PrivateEndpoint({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return PrivateEndpoint(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

