// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'system_data_response.dart';

/// The flow resource definition.
class FlowResponse {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentityResponse>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String> location;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Details of the resource plan.
  final pulumi.Input<PlanResponse>? plan;
  /// Properties of flow
  final pulumi.Input<FlowPropertiesResponse>? properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

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
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': location,
      'name': name,
      'plan': ?pulumi.Input.mapOptionalInputValue<PlanResponse, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<FlowPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory FlowResponse.fromMap(Map<String, dynamic> map) {
    return FlowResponse(
      id: (map['id'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      plan: map['plan'] == null ? null : (PlanResponse.fromMap((map['plan']! as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : (FlowPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

