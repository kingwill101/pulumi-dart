// ignore_for_file: unused_element, unnecessary_cast

import 'afddomain_https_parameters_response.dart';
import 'domain_validation_properties_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAFDCustomDomain.
class GetAFDCustomDomainResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource reference to the Azure DNS zone
  final ResourceReferenceResponse? azureDnsZone;
  final String deploymentStatus;
  /// Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step. DCV stands for DomainControlValidation.
  final String domainValidationState;
  /// Key-Value pair representing migration properties for domains.
  final Map<String, String>? extendedProperties;
  /// The host name of the domain. Must be a domain name.
  final String hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Resource reference to the Azure resource where custom domain ownership was prevalidated
  final ResourceReferenceResponse? preValidatedCustomDomainResourceId;
  /// The name of the profile which holds the domain.
  final String profileName;
  /// Provisioning status
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The configuration specifying how to enable HTTPS for the domain - using AzureFrontDoor managed certificate or user's own certificate. If not specified, enabling ssl uses AzureFrontDoor managed certificate by default.
  final AFDDomainHttpsParametersResponse? tlsSettings;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Values the customer needs to validate domain ownership
  final DomainValidationPropertiesResponse validationProperties;

  /// Creates a new [GetAFDCustomDomainResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureDnsZone] Resource reference to the Azure DNS zone
  /// [deploymentStatus] Required.
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
  GetAFDCustomDomainResult({
    required this.azureApiVersion,
    this.azureDnsZone,
    required this.deploymentStatus,
    required this.domainValidationState,
    this.extendedProperties,
    required this.hostName,
    required this.id,
    required this.name,
    this.preValidatedCustomDomainResourceId,
    required this.profileName,
    required this.provisioningState,
    required this.systemData,
    this.tlsSettings,
    required this.type,
    required this.validationProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureDnsZone': ?azureDnsZone == null ? null : azureDnsZone!.toMap(),
      'deploymentStatus': deploymentStatus,
      'domainValidationState': domainValidationState,
      'extendedProperties': ?extendedProperties,
      'hostName': hostName,
      'id': id,
      'name': name,
      'preValidatedCustomDomainResourceId': ?preValidatedCustomDomainResourceId == null ? null : preValidatedCustomDomainResourceId!.toMap(),
      'profileName': profileName,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tlsSettings': ?tlsSettings == null ? null : tlsSettings!.toMap(),
      'type': type,
      'validationProperties': validationProperties.toMap(),
    };
  }

  factory GetAFDCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetAFDCustomDomainResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureDnsZone: map['azureDnsZone'] == null ? null : ResourceReferenceResponse.fromMap((map['azureDnsZone']! as Map).cast<String, dynamic>()),
      deploymentStatus: map['deploymentStatus'] as String,
      domainValidationState: map['domainValidationState'] as String,
      extendedProperties: map['extendedProperties'] == null ? null : (map['extendedProperties']! as Map).cast<String, String>(),
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      preValidatedCustomDomainResourceId: map['preValidatedCustomDomainResourceId'] == null ? null : ResourceReferenceResponse.fromMap((map['preValidatedCustomDomainResourceId']! as Map).cast<String, dynamic>()),
      profileName: map['profileName'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tlsSettings: map['tlsSettings'] == null ? null : AFDDomainHttpsParametersResponse.fromMap((map['tlsSettings']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      validationProperties: DomainValidationPropertiesResponse.fromMap((map['validationProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

