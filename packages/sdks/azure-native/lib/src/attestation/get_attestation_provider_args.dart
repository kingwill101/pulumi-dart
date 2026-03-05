// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_attestation_get_attestation_provider_args_doc}
/// Arguments for getAttestationProvider.
/// {@endtemplate}
/// {@macro pulumi_attestation_get_attestation_provider_args_doc}
class GetAttestationProviderArgs {
  /// Name of the attestation provider.
  final pulumi.Input<String> providerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAttestationProviderArgs].
  /// [providerName] Name of the attestation provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAttestationProviderArgs({
    required this.providerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerName': providerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAttestationProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetAttestationProviderArgs(
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

