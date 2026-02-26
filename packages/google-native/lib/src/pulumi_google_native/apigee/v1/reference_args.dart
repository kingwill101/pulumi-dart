// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Reference.
class ReferenceArgs {
  /// Optional. A human-readable description of this reference.
  final Input<String>? description;
  final Input<String> environmentId;

  /// The resource id of this reference. Values must match the regular expression [\w\s\-.]+.
  final Input<String>? name;
  final Input<String> organizationId;

  /// The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resource_type.
  final Input<String> refers;

  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  final Input<String>? resourceType;

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
      description: Input.asOptionalInput<String>(map['description']),
      environmentId: Input.asInput<String>(map['environmentId']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      refers: Input.asInput<String>(map['refers']),
      resourceType: Input.asOptionalInput<String>(map['resourceType']),
    );
  }
}
