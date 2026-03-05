// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represent remote private endpoint connection.
class RemotePrivateEndpointConnection {
  /// Gets or sets the remote private endpoint connection id.
  final pulumi.Input<String>? id;

  /// Creates a new [RemotePrivateEndpointConnection].
  /// [id] Gets or sets the remote private endpoint connection id.
  RemotePrivateEndpointConnection({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory RemotePrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointConnection(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

