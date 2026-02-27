// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Reference.
class ReferenceArgs {
  /// Optional. A human-readable description of this reference.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> environmentId;

  /// The resource id of this reference. Values must match the regular expression [\w\s\-.]+.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resource_type.
  final pulumi.Input<String> refers;

  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  final pulumi.Input<String>? resourceType;

  ReferenceArgs({
    this.description,
    required this.environmentId,
    this.name,
    required this.organizationId,
    required this.refers,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['environmentId'] = environmentId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    map['refers'] = refers;
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    return map;
  }

  factory ReferenceArgs.fromMap(Map<String, dynamic> map) {
    return ReferenceArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      refers: pulumi.Input.asInput<String>(map['refers']),
      resourceType: pulumi.Input.asOptionalInput<String>(map['resourceType']),
    );
  }
}
