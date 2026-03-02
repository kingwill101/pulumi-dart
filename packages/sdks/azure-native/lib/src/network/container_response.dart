// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to container resource in remote resource provider.
class ContainerResponse {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [ContainerResponse].
  /// [id] Resource ID.
  ContainerResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ContainerResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

