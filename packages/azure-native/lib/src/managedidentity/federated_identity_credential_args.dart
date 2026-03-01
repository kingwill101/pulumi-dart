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
    required List<String> audiences,
    String? federatedIdentityCredentialResourceName,
    required String issuer,
    required String resourceGroupName,
    required String resourceName,
    required String subject,
  }) :
      audiences = pulumi.Input.asInput<List<String>>(audiences),
      federatedIdentityCredentialResourceName = pulumi.Input.asOptionalInput<String>(federatedIdentityCredentialResourceName),
      issuer = pulumi.Input.asInput<String>(issuer),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      subject = pulumi.Input.asInput<String>(subject);

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
      audiences: (map['audiences'] as List).cast<String>(),
      federatedIdentityCredentialResourceName: map['federatedIdentityCredentialResourceName'] == null ? null : map['federatedIdentityCredentialResourceName'] as String,
      issuer: map['issuer'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      subject: map['subject'] as String,
    );
  }
}

