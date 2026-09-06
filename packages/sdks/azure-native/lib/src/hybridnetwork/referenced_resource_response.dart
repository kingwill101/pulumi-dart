// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to another resource.
class ReferencedResourceResponse {
  /// Resource ID.
  final pulumi.Input<String?>? id;

  /// Creates a new [ReferencedResourceResponse].
  /// [id] Resource ID.
  const ReferencedResourceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ReferencedResourceResponse.fromMap(Map<String, dynamic> map) {
    return ReferencedResourceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
