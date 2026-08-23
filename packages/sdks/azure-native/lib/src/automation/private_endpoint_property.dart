// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private endpoint which the connection belongs to.
class PrivateEndpointProperty {
  /// Resource id of the private endpoint.
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpointProperty].
  /// [id] Resource id of the private endpoint.
  const PrivateEndpointProperty({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointProperty.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointProperty(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
