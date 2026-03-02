// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a resource ID. For example, for a subnet, it is the resource URL for the subnet.
class ResourceId {
  /// The ID of the resource
  final pulumi.Input<String> id;

  /// Creates a new [ResourceId].
  /// [id] The ID of the resource
  ResourceId({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ResourceId.fromMap(Map<String, dynamic> map) {
    return ResourceId(
      id: (map['id'] as String).input(),
    );
  }
}

