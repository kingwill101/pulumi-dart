// ignore_for_file: unused_element, unnecessary_cast

import 'afddomain_https_parameters_response.dart';
import 'domain_validation_properties_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAFDCustomDomain.
class GetAFDCustomDomainResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource reference to the Azure DNS zone
  final ResourceReferenceResponse? azureDnsZone;
  final String? deploymentStatus;
  /// Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step. DCV stands for DomainControlValidation.
  final String? domainValidationState;
  /// Key-Value pair representing migration properties for domains.
  final Map<String, String>? extendedProperties;
  /// The host name of the domain. Must be a domain name.
  final String? hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Resource reference to the Azure resource where custom domain ownership was prevalidated
  final ResourceReferenceResponse? preValidatedCustomDomainResourceId;
  /// The name of the profile which holds the domain.
  final String? profileName;
  /// Provisioning status
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The configuration specifying how to enable HTTPS for the domain - using AzureFrontDoor managed certificate or user's own certificate. If not specified, enabling ssl uses AzureFrontDoor managed certificate by default.
  final AFDDomainHttpsParametersResponse? tlsSettings;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Values the customer needs to validate domain ownership
  final DomainValidationPropertiesResponse? validationProperties;

  /// Creates a new [GetAFDCustomDomainResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureDnsZone] Resource reference to the Azure DNS zone
  /// [deploymentStatus] Optional.
  /// [domainValidationState] Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step. DCV stands for DomainControlValidation.
  /// [extendedProperties] Key-Value pair representing migration properties for domains.
  /// [hostName] The host name of the domain. Must be a domain name.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [preValidatedCustomDomainResourceId] Resource reference to the Azure resource where custom domain ownership was prevalidated
  /// [profileName] The name of the profile which holds the domain.
  /// [provisioningState] Provisioning status
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tlsSettings] The configuration specifying how to enable HTTPS for the domain - using AzureFrontDoor managed certificate or user's own certificate. If not specified, enabling ssl uses AzureFrontDoor managed certificate by default.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validationProperties] Values the customer needs to validate domain ownership
  const GetAFDCustomDomainResult({
    this.azureApiVersion,
    this.azureDnsZone,
    this.deploymentStatus,
    this.domainValidationState,
    this.extendedProperties,
    this.hostName,
    this.id,
    this.name,
    this.preValidatedCustomDomainResourceId,
    this.profileName,
    this.provisioningState,
    this.systemData,
    this.tlsSettings,
    this.type,
    this.validationProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'azureDnsZone': ?azureDnsZone?.toMap(),
      'deploymentStatus': ?deploymentStatus,
      'domainValidationState': ?domainValidationState,
      'extendedProperties': ?extendedProperties,
      'hostName': ?hostName,
      'id': ?id,
      'name': ?name,
      'preValidatedCustomDomainResourceId': ?preValidatedCustomDomainResourceId?.toMap(),
      'profileName': ?profileName,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tlsSettings': ?tlsSettings?.toMap(),
      'type': ?type,
      'validationProperties': ?validationProperties?.toMap(),
    };
  }

  factory GetAFDCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetAFDCustomDomainResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureDnsZone: (() { final guardedValue = map['azureDnsZone']; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deploymentStatus: (() { final guardedValue = map['deploymentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainValidationState: (() { final guardedValue = map['domainValidationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedProperties: (() { final guardedValue = map['extendedProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preValidatedCustomDomainResourceId: (() { final guardedValue = map['preValidatedCustomDomainResourceId']; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tlsSettings: (() { final guardedValue = map['tlsSettings']; if (guardedValue == null) return null; return AFDDomainHttpsParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationProperties: (() { final guardedValue = map['validationProperties']; if (guardedValue == null) return null; return DomainValidationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
