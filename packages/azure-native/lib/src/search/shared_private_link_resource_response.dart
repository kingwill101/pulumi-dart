// ignore_for_file: unused_element, unnecessary_cast

import 'shared_private_link_resource_properties_response.dart';
import 'system_data_response.dart';

/// Describes a shared private link resource managed by the Azure AI Search service.
class SharedPrivateLinkResourceResponse {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Describes the properties of a shared private link resource managed by the Azure AI Search service.
  final SharedPrivateLinkResourcePropertiesResponse? properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [SharedPrivateLinkResourceResponse].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [properties] Describes the properties of a shared private link resource managed by the Azure AI Search service.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  SharedPrivateLinkResourceResponse({
    required this.id,
    required this.name,
    this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory SharedPrivateLinkResourceResponse.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      properties: map['properties'] == null ? null : SharedPrivateLinkResourcePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

