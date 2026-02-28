// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_env_references_env_references_args_doc}
/// The set of arguments for EnvReferences.
/// {@endtemplate}
/// {@macro pulumi_apigee_env_references_env_references_args_doc}
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

  /// Creates a new [EnvReferencesArgs].
  /// [description] Optional. A human-readable description of this reference.
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [name] Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  /// [refers] Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  /// [resourceType] The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  EnvReferencesArgs({
    String? description,
    required String envId,
    String? name,
    required String refers,
    required String resourceType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      envId = pulumi.Input.asInput<String>(envId),
      name = pulumi.Input.asOptionalInput<String>(name),
      refers = pulumi.Input.asInput<String>(refers),
      resourceType = pulumi.Input.asInput<String>(resourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'envId': envId,
      'name': ?name,
      'refers': refers,
      'resourceType': resourceType,
    };
  }

  factory EnvReferencesArgs.fromMap(Map<String, dynamic> map) {
    return EnvReferencesArgs(
      description: map['description'] == null ? null : map['description'] as String,
      envId: map['envId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      refers: map['refers'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

