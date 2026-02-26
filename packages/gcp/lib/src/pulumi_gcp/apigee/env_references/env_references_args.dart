// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EnvReferences.
class EnvReferencesArgs {
  /// Optional. A human-readable description of this reference.
  final Input<String>? description;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final Input<String> envId;

  /// Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  final Input<String>? name;

  /// Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  final Input<String> refers;

  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  final Input<String> resourceType;

  EnvReferencesArgs({
    this.description,
    required this.envId,
    this.name,
    required this.refers,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['envId'] = envId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['refers'] = refers;
    map['resourceType'] = resourceType;
    return map;
  }

  factory EnvReferencesArgs.fromMap(Map<String, dynamic> map) {
    return EnvReferencesArgs(
      description: Input.asOptionalInput<String>(map['description']),
      envId: Input.asInput<String>(map['envId']),
      name: Input.asOptionalInput<String>(map['name']),
      refers: Input.asInput<String>(map['refers']),
      resourceType: Input.asInput<String>(map['resourceType']),
    );
  }
}
