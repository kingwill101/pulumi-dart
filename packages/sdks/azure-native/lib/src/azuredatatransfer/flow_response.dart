// ignore_for_file: unused_element, unnecessary_cast

import 'flow_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'system_data_response.dart';

/// The flow resource definition.
class FlowResponse {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Details of the resource plan.
  final PlanResponse? plan;
  /// Properties of flow
  final FlowPropertiesResponse? properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [FlowResponse].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [plan] Details of the resource plan.
  /// [properties] Properties of flow
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  FlowResponse({
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    this.plan,
    this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'plan': ?plan == null ? null : plan!.toMap(),
      'properties': ?properties == null ? null : properties!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory FlowResponse.fromMap(Map<String, dynamic> map) {
    return FlowResponse(
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      plan: map['plan'] == null ? null : PlanResponse.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : FlowPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

