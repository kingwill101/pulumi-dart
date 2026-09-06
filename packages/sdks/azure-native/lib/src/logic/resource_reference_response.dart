// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource reference.
class ResourceReferenceResponse {
  /// The resource id.
  final pulumi.Input<String?>? id;
  /// Gets the resource name.
  final pulumi.Input<String> name;
  /// Gets the resource type.
  final pulumi.Input<String> type;

  /// Creates a new [ResourceReferenceResponse].
  /// [id] The resource id.
  /// [name] Gets the resource name.
  /// [type] Gets the resource type.
  const ResourceReferenceResponse({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
