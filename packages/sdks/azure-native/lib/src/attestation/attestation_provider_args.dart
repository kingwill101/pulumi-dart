// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_service_creation_specific_params.dart';

/// {@template pulumi_attestation_attestation_provider_args_doc}
/// The set of arguments for AttestationProvider.
/// {@endtemplate}
/// {@macro pulumi_attestation_attestation_provider_args_doc}
class AttestationProviderArgs {
  /// The supported Azure location where the attestation provider should be created.
  final pulumi.Input<String>? location;
  /// Properties of the attestation provider
  final pulumi.Input<AttestationServiceCreationSpecificParams> properties;
  /// Name of the attestation provider.
  final pulumi.Input<String>? providerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tags that will be assigned to the attestation provider.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AttestationProviderArgs].
  /// [location] The supported Azure location where the attestation provider should be created.
  /// [properties] Properties of the attestation provider
  /// [providerName] Name of the attestation provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags that will be assigned to the attestation provider.
  AttestationProviderArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<AttestationServiceCreationSpecificParams> properties,
    pulumi.Output<String>? providerName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<AttestationServiceCreationSpecificParams>(properties),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<AttestationServiceCreationSpecificParams, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerName': ?providerName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AttestationProviderArgs.fromMap(Map<String, dynamic> map) {
    return AttestationProviderArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<AttestationServiceCreationSpecificParams>(AttestationServiceCreationSpecificParams.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      providerName: map['providerName'] == null ? null : pulumi.Output.create<String>(map['providerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

