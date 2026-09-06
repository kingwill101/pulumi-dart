// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a reference to a sub-resource.
class SubResourceResponse {
  /// The ID of the sub-resource.
  final pulumi.Input<String?>? id;

  /// Creates a new [SubResourceResponse].
  /// [id] The ID of the sub-resource.
  const SubResourceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubResourceResponse.fromMap(Map<String, dynamic> map) {
    return SubResourceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
