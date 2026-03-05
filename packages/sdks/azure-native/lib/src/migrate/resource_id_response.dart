// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ARM id for a resource.
class ResourceIdResponse {
  final pulumi.Input<String> id;

  /// Creates a new [ResourceIdResponse].
  /// [id] Required.
  ResourceIdResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ResourceIdResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

