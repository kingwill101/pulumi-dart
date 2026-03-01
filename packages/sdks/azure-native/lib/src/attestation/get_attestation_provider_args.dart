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
    required pulumi.Output<String> providerName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      providerName = pulumi.Input.asInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerName': providerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAttestationProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetAttestationProviderArgs(
      providerName: pulumi.Output.create<String>(map['providerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

