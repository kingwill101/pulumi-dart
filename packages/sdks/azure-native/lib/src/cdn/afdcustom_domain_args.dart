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
  const AFDCustomDomainArgs({
    this.azureDnsZone,
    this.customDomainName,
    this.extendedProperties,
    required this.hostName,
    this.preValidatedCustomDomainResourceId,
    required this.profileName,
    required this.resourceGroupName,
    this.tlsSettings,
  });

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
      azureDnsZone: (() { final guardedValue = map['azureDnsZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customDomainName: (() { final guardedValue = map['customDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedProperties: (() { final guardedValue = map['extendedProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      preValidatedCustomDomainResourceId: (() { final guardedValue = map['preValidatedCustomDomainResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tlsSettings: (() { final guardedValue = map['tlsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AFDDomainHttpsParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

