// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies the service being brought into the virtual network.
class EndpointService {
  /// A unique identifier of the service being referenced by the interface endpoint.
  final pulumi.Input<String>? id;

  /// Creates a new [EndpointService].
  /// [id] A unique identifier of the service being referenced by the interface endpoint.
  const EndpointService({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory EndpointService.fromMap(Map<String, dynamic> map) {
    return EndpointService(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

