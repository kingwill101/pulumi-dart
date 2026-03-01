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
  final pulumi.Input<String>? flowName;
  /// The managed identity of the flow resource, if configured.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Plan for the resource.
  final pulumi.Input<Plan>? plan;
  /// Properties of flow
  final pulumi.Input<FlowProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FlowArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [flowName] The name for the flow that is to be onboarded.
  /// [identity] The managed identity of the flow resource, if configured.
  /// [location] The geo-location where the resource lives
  /// [plan] Plan for the resource.
  /// [properties] Properties of flow
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  FlowArgs({
    required pulumi.Output<String> connectionName,
    pulumi.Output<String>? flowName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<Plan>? plan,
    pulumi.Output<FlowProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      flowName = pulumi.Input.asOptionalInput<String>(flowName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      properties = pulumi.Input.asOptionalInput<FlowProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      flowName: map['flowName'] == null ? null : pulumi.Output.create<String>(map['flowName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<Plan>(Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      properties: map['properties'] == null ? null : pulumi.Output.create<FlowProperties>(FlowProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

