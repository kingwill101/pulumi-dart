// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCustomDomain.
class GetCustomDomainResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Certificate parameters for securing custom HTTPS
  final dynamic customHttpsParameters;
  /// Provisioning status of the custom domain.
  final String? customHttpsProvisioningState;
  /// Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step.
  final String? customHttpsProvisioningSubstate;
  /// The host name of the custom domain. Must be a domain name.
  final String? hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Provisioning status of Custom Https of the custom domain.
  final String? provisioningState;
  /// Resource status of the custom domain.
  final String? resourceState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetCustomDomainResult({
    this.azureApiVersion,
    this.customHttpsParameters,
    this.customHttpsProvisioningState,
    this.customHttpsProvisioningSubstate,
    this.hostName,
    this.id,
    this.name,
    this.provisioningState,
    this.resourceState,
    this.systemData,
    this.type,
    this.validationData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'customHttpsParameters': ?customHttpsParameters,
      'customHttpsProvisioningState': ?customHttpsProvisioningState,
      'customHttpsProvisioningSubstate': ?customHttpsProvisioningSubstate,
      'hostName': ?hostName,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceState': ?resourceState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'validationData': ?validationData,
    };
  }

  factory GetCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customHttpsParameters: (() { final guardedValue = map['customHttpsParameters']; if (guardedValue == null) return null; return guardedValue; })(),
      customHttpsProvisioningState: (() { final guardedValue = map['customHttpsProvisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customHttpsProvisioningSubstate: (() { final guardedValue = map['customHttpsProvisioningSubstate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceState: (() { final guardedValue = map['resourceState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationData: (() { final guardedValue = map['validationData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
