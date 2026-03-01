// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_first_party_managed_certificate_parameters.dart';

/// {@template pulumi_cdn_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_cdn_secret_args_doc}
class SecretArgs {
  /// object which contains secret parameters
  final pulumi.Input<AzureFirstPartyManagedCertificateParameters>? parameters;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Secret under the profile.
  final pulumi.Input<String>? secretName;

  /// Creates a new [SecretArgs].
  /// [parameters] object which contains secret parameters
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [secretName] Name of the Secret under the profile.
  SecretArgs({
    AzureFirstPartyManagedCertificateParameters? parameters,
    required String profileName,
    required String resourceGroupName,
    String? secretName,
  }) :
      parameters = pulumi.Input.asOptionalInput<AzureFirstPartyManagedCertificateParameters>(parameters),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secretName = pulumi.Input.asOptionalInput<String>(secretName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<AzureFirstPartyManagedCertificateParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'secretName': ?secretName,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      parameters: map['parameters'] == null ? null : AzureFirstPartyManagedCertificateParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

