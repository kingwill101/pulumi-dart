// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to another resource.
class ResourceReferenceResponse {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [ResourceReferenceResponse].
  /// [id] Resource ID.
  const ResourceReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceReferenceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
