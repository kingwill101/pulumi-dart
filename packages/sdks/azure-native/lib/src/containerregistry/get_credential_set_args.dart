// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_credential_set_args_doc}
/// Arguments for getCredentialSet.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_credential_set_args_doc}
class GetCredentialSetArgs {
  /// The name of the credential set.
  final pulumi.Input<String> credentialSetName;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCredentialSetArgs].
  /// [credentialSetName] The name of the credential set.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCredentialSetArgs({
    required pulumi.Output<String> credentialSetName,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      credentialSetName = pulumi.Input.asInput<String>(credentialSetName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialSetName': credentialSetName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCredentialSetArgs.fromMap(Map<String, dynamic> map) {
    return GetCredentialSetArgs(
      credentialSetName: pulumi.Output.create<String>(map['credentialSetName'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

