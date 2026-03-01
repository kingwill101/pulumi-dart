// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabricmesh_secret_value_args_doc}
/// The set of arguments for SecretValue.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_secret_value_args_doc}
class SecretValueArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// The name of the secret resource.
  final pulumi.Input<String> secretResourceName;
  /// The name of the secret resource value which is typically the version identifier for the value.
  final pulumi.Input<String>? secretValueResourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The actual value of the secret.
  final pulumi.Input<String>? value;

  /// Creates a new [SecretValueArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] Azure resource group name
  /// [secretResourceName] The name of the secret resource.
  /// [secretValueResourceName] The name of the secret resource value which is typically the version identifier for the value.
  /// [tags] Resource tags.
  /// [value] The actual value of the secret.
  SecretValueArgs({
    String? location,
    required String resourceGroupName,
    required String secretResourceName,
    String? secretValueResourceName,
    Map<String, String>? tags,
    String? value,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secretResourceName = pulumi.Input.asInput<String>(secretResourceName),
      secretValueResourceName = pulumi.Input.asOptionalInput<String>(secretValueResourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'secretResourceName': secretResourceName,
      'secretValueResourceName': ?secretValueResourceName,
      'tags': ?tags,
      'value': ?value,
    };
  }

  factory SecretValueArgs.fromMap(Map<String, dynamic> map) {
    return SecretValueArgs(
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secretResourceName: map['secretResourceName'] as String,
      secretValueResourceName: map['secretValueResourceName'] == null ? null : map['secretValueResourceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

