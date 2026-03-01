// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_resource_properties.dart';

/// {@template pulumi_servicefabricmesh_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_secret_args_doc}
class SecretArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Describes the properties of a secret resource.
  final pulumi.Input<SecretResourceProperties> properties;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// The name of the secret resource.
  final pulumi.Input<String>? secretResourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SecretArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] Describes the properties of a secret resource.
  /// [resourceGroupName] Azure resource group name
  /// [secretResourceName] The name of the secret resource.
  /// [tags] Resource tags.
  SecretArgs({
    String? location,
    required SecretResourceProperties properties,
    required String resourceGroupName,
    String? secretResourceName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<SecretResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secretResourceName = pulumi.Input.asOptionalInput<String>(secretResourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<SecretResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'secretResourceName': ?secretResourceName,
      'tags': ?tags,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      location: map['location'] == null ? null : map['location'] as String,
      properties: SecretResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      secretResourceName: map['secretResourceName'] == null ? null : map['secretResourceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

