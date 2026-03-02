// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentity_federated_identity_credential_args_doc}
/// The set of arguments for FederatedIdentityCredential.
/// {@endtemplate}
/// {@macro pulumi_managedidentity_federated_identity_credential_args_doc}
class FederatedIdentityCredentialArgs {
  /// The list of audiences that can appear in the issued token.
  final pulumi.Input<List<String>> audiences;
  /// The name of the federated identity credential resource.
  final pulumi.Input<String>? federatedIdentityCredentialResourceName;
  /// The URL of the issuer to be trusted.
  final pulumi.Input<String> issuer;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the identity resource.
  final pulumi.Input<String> resourceName;
  /// The identifier of the external identity.
  final pulumi.Input<String> subject;

  /// Creates a new [FederatedIdentityCredentialArgs].
  /// [audiences] The list of audiences that can appear in the issued token.
  /// [federatedIdentityCredentialResourceName] The name of the federated identity credential resource.
  /// [issuer] The URL of the issuer to be trusted.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the identity resource.
  /// [subject] The identifier of the external identity.
  FederatedIdentityCredentialArgs({
    required this.audiences,
    this.federatedIdentityCredentialResourceName,
    required this.issuer,
    required this.resourceGroupName,
    required this.resourceName,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
      'federatedIdentityCredentialResourceName': ?federatedIdentityCredentialResourceName,
      'issuer': issuer,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'subject': subject,
    };
  }

  factory FederatedIdentityCredentialArgs.fromMap(Map<String, dynamic> map) {
    return FederatedIdentityCredentialArgs(
      audiences: ((map['audiences'] as List).cast<String>()).input(),
      federatedIdentityCredentialResourceName: map['federatedIdentityCredentialResourceName'] == null ? null : (map['federatedIdentityCredentialResourceName']! as String).input(),
      issuer: (map['issuer'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      subject: (map['subject'] as String).input(),
    );
  }
}

