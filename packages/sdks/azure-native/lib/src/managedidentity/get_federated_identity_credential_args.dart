// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentity_get_federated_identity_credential_args_doc}
/// Arguments for getFederatedIdentityCredential.
/// {@endtemplate}
/// {@macro pulumi_managedidentity_get_federated_identity_credential_args_doc}
class GetFederatedIdentityCredentialArgs {
  /// The name of the federated identity credential resource.
  final pulumi.Input<String> federatedIdentityCredentialResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the identity resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetFederatedIdentityCredentialArgs].
  /// [federatedIdentityCredentialResourceName] The name of the federated identity credential resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the identity resource.
  GetFederatedIdentityCredentialArgs({
    required pulumi.Output<String> federatedIdentityCredentialResourceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      federatedIdentityCredentialResourceName = pulumi.Input.asInput<String>(federatedIdentityCredentialResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federatedIdentityCredentialResourceName': federatedIdentityCredentialResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetFederatedIdentityCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetFederatedIdentityCredentialArgs(
      federatedIdentityCredentialResourceName: pulumi.Output.create<String>(map['federatedIdentityCredentialResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

