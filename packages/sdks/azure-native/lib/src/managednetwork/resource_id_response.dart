// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Generic pointer to a resource
class ResourceIdResponse {
  /// Resource Id
  final pulumi.Input<String>? id;

  /// Creates a new [ResourceIdResponse].
  /// [id] Resource Id
  ResourceIdResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceIdResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

