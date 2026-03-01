// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSignalRCustomDomain.
class GetSignalRCustomDomainResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Reference to a resource.
  final ResourceReferenceResponse customCertificate;
  /// The custom domain name.
  final String domainName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSignalRCustomDomainResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customCertificate] Reference to a resource.
  /// [domainName] The custom domain name.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSignalRCustomDomainResult({
    required this.azureApiVersion,
    required this.customCertificate,
    required this.domainName,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customCertificate': customCertificate.toMap(),
      'domainName': domainName,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSignalRCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetSignalRCustomDomainResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customCertificate: ResourceReferenceResponse.fromMap((map['customCertificate'] as Map).cast<String, dynamic>()),
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

