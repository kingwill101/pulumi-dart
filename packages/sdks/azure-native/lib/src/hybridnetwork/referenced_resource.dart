// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to another resource.
class ReferencedResource {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [ReferencedResource].
  /// [id] Resource ID.
  const ReferencedResource({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ReferencedResource.fromMap(Map<String, dynamic> map) {
    return ReferencedResource(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
