// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_properties_response.dart';
import 'system_data_response.dart';

/// The serviceGroup details.
class ServiceGroupResponse {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// The kind of the serviceGroup.
  final pulumi.Input<String>? kind;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// ServiceGroup creation request body parameters.
  final pulumi.Input<ServiceGroupPropertiesResponse>? properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The serviceGroup tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [ServiceGroupResponse].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the serviceGroup.
  /// [name] The name of the resource
  /// [properties] ServiceGroup creation request body parameters.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] The serviceGroup tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  ServiceGroupResponse({
    required this.id,
    this.kind,
    required this.name,
    this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ServiceGroupPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory ServiceGroupResponse.fromMap(Map<String, dynamic> map) {
    return ServiceGroupResponse(
      id: (map['id'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (ServiceGroupPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

