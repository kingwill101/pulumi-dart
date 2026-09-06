// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_propertieslist_list_flows_by_pipeline_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'system_data_response.dart';

/// The flow resource definition.
class FlowResponse {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentityResponse?>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String> location;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Details of the resource plan.
  final pulumi.Input<PlanResponse?>? plan;
  /// Properties of flow
  final pulumi.Input<FlowPropertieslistListFlowsByPipelineResponse?>? properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
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
  const FlowResponse({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<FlowPropertieslistListFlowsByPipelineResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory FlowResponse.fromMap(Map<String, dynamic> map) {
    return FlowResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowPropertieslistListFlowsByPipelineResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
