// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_reference_args_doc}
/// The set of arguments for Reference.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_reference_args_doc}
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

  /// Creates a new [ReferenceArgs].
  /// [description] Optional. A human-readable description of this reference.
  /// [environmentId] Required.
  /// [name] The resource id of this reference. Values must match the regular expression [\w\s\-.]+.
  /// [organizationId] Required.
  /// [refers] The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resource_type.
  /// [resourceType] The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  ReferenceArgs({
    String? description,
    required String environmentId,
    String? name,
    required String organizationId,
    required String refers,
    String? resourceType,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       environmentId = pulumi.Input.asInput<String>(environmentId),
       name = pulumi.Input.asOptionalInput<String>(name),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       refers = pulumi.Input.asInput<String>(refers),
       resourceType = pulumi.Input.asOptionalInput<String>(resourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'environmentId': environmentId,
      'name': ?name,
      'organizationId': organizationId,
      'refers': refers,
      'resourceType': ?resourceType,
    };
  }

  factory ReferenceArgs.fromMap(Map<String, dynamic> map) {
    return ReferenceArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      environmentId: map['environmentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      refers: map['refers'] as String,
      resourceType: map['resourceType'] == null
          ? null
          : map['resourceType'] as String,
    );
  }
}
