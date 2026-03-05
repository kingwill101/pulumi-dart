// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a resource ID. For example, for a subnet, it is the resource URL for the subnet.
class ResourceIdResponse {
  /// The ID of the resource
  final pulumi.Input<String> id;

  /// Creates a new [ResourceIdResponse].
  /// [id] The ID of the resource
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

