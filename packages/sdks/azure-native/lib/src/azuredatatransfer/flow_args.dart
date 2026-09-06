// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_properties.dart';
import 'managed_service_identity.dart';
import 'plan.dart';

/// {@template pulumi_azuredatatransfer_flow_args_doc}
/// The set of arguments for Flow.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_flow_args_doc}
class FlowArgs {
  /// The name for the connection that is to be requested.
  final pulumi.Input<String> connectionName;
  /// The name for the flow that is to be onboarded.
  final pulumi.Input<String?>? flowName;
  /// The managed identity of the flow resource, if configured.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Plan for the resource.
  final pulumi.Input<Plan?>? plan;
  /// Properties of flow
  final pulumi.Input<FlowProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FlowArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [flowName] The name for the flow that is to be onboarded.
  /// [identity] The managed identity of the flow resource, if configured.
  /// [location] The geo-location where the resource lives
  /// [plan] Plan for the resource.
  /// [properties] Properties of flow
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const FlowArgs({
    required this.connectionName,
    this.flowName,
    this.identity,
    this.location,
    this.plan,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'flowName': ?flowName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<FlowProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FlowArgs.fromMap(Map<String, dynamic> map) {
    return FlowArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      flowName: (() { final guardedValue = map['flowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Plan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
