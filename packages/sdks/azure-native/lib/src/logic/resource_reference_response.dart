// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource reference.
class ResourceReferenceResponse {
  /// The resource id.
  final pulumi.Input<String>? id;
  /// Gets the resource name.
  final pulumi.Input<String> name;
  /// Gets the resource type.
  final pulumi.Input<String> type;

  /// Creates a new [ResourceReferenceResponse].
  /// [id] The resource id.
  /// [name] Gets the resource name.
  /// [type] Gets the resource type.
  ResourceReferenceResponse({
    this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'type': type,
    };
  }

  factory ResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceReferenceResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

