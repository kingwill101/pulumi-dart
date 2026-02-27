// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EnvReferences.
class EnvReferencesArgs {
  /// Optional. A human-readable description of this reference.
  final pulumi.Input<String>? description;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String> envId;

  /// Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  final pulumi.Input<String>? name;

  /// Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  final pulumi.Input<String> refers;

  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  final pulumi.Input<String> resourceType;

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      envId: pulumi.Input.asInput<String>(map['envId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      refers: pulumi.Input.asInput<String>(map['refers']),
      resourceType: pulumi.Input.asInput<String>(map['resourceType']),
    );
  }
}
