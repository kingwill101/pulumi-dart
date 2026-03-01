// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_credential_args_doc}
/// The set of arguments for Credential.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_credential_args_doc}
class CredentialArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CredentialArgs].
  /// [location] The geo-location where the resource lives
  /// [namespaceName] The name of the namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CredentialArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CredentialArgs.fromMap(Map<String, dynamic> map) {
    return CredentialArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

