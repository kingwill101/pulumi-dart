// ignore_for_file: unused_element, unnecessary_cast

import 'cdn_managed_https_parameters_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCustomDomain.
class GetCustomDomainResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Certificate parameters for securing custom HTTPS
  final CdnManagedHttpsParametersResponse? customHttpsParameters;
  /// Provisioning status of the custom domain.
  final String customHttpsProvisioningState;
  /// Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step.
  final String customHttpsProvisioningSubstate;
  /// The host name of the custom domain. Must be a domain name.
  final String hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Provisioning status of Custom Https of the custom domain.
  final String provisioningState;
  /// Resource status of the custom domain.
  final String resourceState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Special validation or data may be required when delivering CDN to some regions due to local compliance reasons. E.g. ICP license number of a custom domain is required to deliver content in China.
  final String? validationData;

  /// Creates a new [GetCustomDomainResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customHttpsParameters] Certificate parameters for securing custom HTTPS
  /// [customHttpsProvisioningState] Provisioning status of the custom domain.
  /// [customHttpsProvisioningSubstate] Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step.
  /// [hostName] The host name of the custom domain. Must be a domain name.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] Provisioning status of Custom Https of the custom domain.
  /// [resourceState] Resource status of the custom domain.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validationData] Special validation or data may be required when delivering CDN to some regions due to local compliance reasons. E.g. ICP license number of a custom domain is required to deliver content in China.
  GetCustomDomainResult({
    required this.azureApiVersion,
    this.customHttpsParameters,
    required this.customHttpsProvisioningState,
    required this.customHttpsProvisioningSubstate,
    required this.hostName,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.resourceState,
    required this.systemData,
    required this.type,
    this.validationData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customHttpsParameters': ?customHttpsParameters == null ? null : customHttpsParameters!.toMap(),
      'customHttpsProvisioningState': customHttpsProvisioningState,
      'customHttpsProvisioningSubstate': customHttpsProvisioningSubstate,
      'hostName': hostName,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'resourceState': resourceState,
      'systemData': systemData.toMap(),
      'type': type,
      'validationData': ?validationData,
    };
  }

  factory GetCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customHttpsParameters: map['customHttpsParameters'] == null ? null : CdnManagedHttpsParametersResponse.fromMap((map['customHttpsParameters'] as Map).cast<String, dynamic>()),
      customHttpsProvisioningState: map['customHttpsProvisioningState'] as String,
      customHttpsProvisioningSubstate: map['customHttpsProvisioningSubstate'] as String,
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceState: map['resourceState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      validationData: map['validationData'] == null ? null : map['validationData'] as String,
    );
  }
}

