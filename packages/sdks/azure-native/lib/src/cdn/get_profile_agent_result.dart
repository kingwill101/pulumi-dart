// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getProfileAgent.
class GetProfileAgentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of custom domains associated with this agent link.
  final List<ResourceReferenceResponse> customDomains;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Provisioning status of the profile agent association.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Reference to the web agent resource.
  final ResourceReferenceResponse webAgent;

  /// Creates a new [GetProfileAgentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customDomains] List of custom domains associated with this agent link.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] Provisioning status of the profile agent association.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [webAgent] Reference to the web agent resource.
  const GetProfileAgentResult({
    required this.azureApiVersion,
    required this.customDomains,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
    required this.webAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customDomains': pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(customDomains, (value) => value.toMap()),
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
      'webAgent': webAgent.toMap(),
    };
  }

  factory GetProfileAgentResult.fromMap(Map<String, dynamic> map) {
    return GetProfileAgentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customDomains: pulumi.Input.decodeList<ResourceReferenceResponse>(map['customDomains']!, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      webAgent: ResourceReferenceResponse.fromMap((map['webAgent']! as Map).cast<String, dynamic>()),
    );
  }
}
