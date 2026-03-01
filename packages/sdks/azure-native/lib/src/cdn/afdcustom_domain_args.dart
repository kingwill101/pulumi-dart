// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'afddomain_https_parameters.dart';
import 'resource_reference.dart';

/// {@template pulumi_cdn_afdcustom_domain_args_doc}
/// The set of arguments for AFDCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_cdn_afdcustom_domain_args_doc}
class AFDCustomDomainArgs {
  /// Resource reference to the Azure DNS zone
  final pulumi.Input<ResourceReference>? azureDnsZone;
  /// Name of the domain under the profile which is unique globally.
  final pulumi.Input<String>? customDomainName;
  /// Key-Value pair representing migration properties for domains.
  final pulumi.Input<Map<String, String>>? extendedProperties;
  /// The host name of the domain. Must be a domain name.
  final pulumi.Input<String> hostName;
  /// Resource reference to the Azure resource where custom domain ownership was prevalidated
  final pulumi.Input<ResourceReference>? preValidatedCustomDomainResourceId;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The configuration specifying how to enable HTTPS for the domain - using AzureFrontDoor managed certificate or user's own certificate. If not specified, enabling ssl uses AzureFrontDoor managed certificate by default.
  final pulumi.Input<AFDDomainHttpsParameters>? tlsSettings;

  /// Creates a new [AFDCustomDomainArgs].
  /// [azureDnsZone] Resource reference to the Azure DNS zone
  /// [customDomainName] Name of the domain under the profile which is unique globally.
  /// [extendedProperties] Key-Value pair representing migration properties for domains.
  /// [hostName] The host name of the domain. Must be a domain name.
  /// [preValidatedCustomDomainResourceId] Resource reference to the Azure resource where custom domain ownership was prevalidated
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tlsSettings] The configuration specifying how to enable HTTPS for the domain - using AzureFrontDoor managed certificate or user's own certificate. If not specified, enabling ssl uses AzureFrontDoor managed certificate by default.
  AFDCustomDomainArgs({
    pulumi.Output<ResourceReference>? azureDnsZone,
    pulumi.Output<String>? customDomainName,
    pulumi.Output<Map<String, String>>? extendedProperties,
    required pulumi.Output<String> hostName,
    pulumi.Output<ResourceReference>? preValidatedCustomDomainResourceId,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<AFDDomainHttpsParameters>? tlsSettings,
  }) :
      azureDnsZone = pulumi.Input.asOptionalInput<ResourceReference>(azureDnsZone),
      customDomainName = pulumi.Input.asOptionalInput<String>(customDomainName),
      extendedProperties = pulumi.Input.asOptionalInput<Map<String, String>>(extendedProperties),
      hostName = pulumi.Input.asInput<String>(hostName),
      preValidatedCustomDomainResourceId = pulumi.Input.asOptionalInput<ResourceReference>(preValidatedCustomDomainResourceId),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tlsSettings = pulumi.Input.asOptionalInput<AFDDomainHttpsParameters>(tlsSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDnsZone': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(azureDnsZone, (value) => value.toMap()),
      'customDomainName': ?customDomainName,
      'extendedProperties': ?extendedProperties,
      'hostName': hostName,
      'preValidatedCustomDomainResourceId': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(preValidatedCustomDomainResourceId, (value) => value.toMap()),
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'tlsSettings': ?pulumi.Input.mapOptionalInputValue<AFDDomainHttpsParameters, Map<String, dynamic>>(tlsSettings, (value) => value.toMap()),
    };
  }

  factory AFDCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return AFDCustomDomainArgs(
      azureDnsZone: map['azureDnsZone'] == null ? null : pulumi.Output.create<ResourceReference>(ResourceReference.fromMap((map['azureDnsZone'] as Map).cast<String, dynamic>())),
      customDomainName: map['customDomainName'] == null ? null : pulumi.Output.create<String>(map['customDomainName'] as String),
      extendedProperties: map['extendedProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['extendedProperties'] as Map).cast<String, String>()),
      hostName: pulumi.Output.create<String>(map['hostName'] as String),
      preValidatedCustomDomainResourceId: map['preValidatedCustomDomainResourceId'] == null ? null : pulumi.Output.create<ResourceReference>(ResourceReference.fromMap((map['preValidatedCustomDomainResourceId'] as Map).cast<String, dynamic>())),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tlsSettings: map['tlsSettings'] == null ? null : pulumi.Output.create<AFDDomainHttpsParameters>(AFDDomainHttpsParameters.fromMap((map['tlsSettings'] as Map).cast<String, dynamic>())),
    );
  }
}

