// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Private Endpoint resource.
class PrivateEndpoint {
  /// This is private endpoint resource created with Microsoft.Network resource provider.
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpoint].
  /// [id] This is private endpoint resource created with Microsoft.Network resource provider.
  const PrivateEndpoint({
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

