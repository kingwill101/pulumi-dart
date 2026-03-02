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
    required this.federatedIdentityCredentialResourceName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federatedIdentityCredentialResourceName': federatedIdentityCredentialResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetFederatedIdentityCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetFederatedIdentityCredentialArgs(
      federatedIdentityCredentialResourceName: (map['federatedIdentityCredentialResourceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

