// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_bulk_instances_operation_properties.dart';
import 'managed_service_identity.dart';
import 'plan.dart';

/// {@template pulumi_computebulkactions_bulk_action_args_doc}
/// The set of arguments for BulkAction.
/// {@endtemplate}
/// {@macro pulumi_computebulkactions_bulk_action_args_doc}
class BulkActionArgs {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The location name.
  final pulumi.Input<String> location;
  /// The name of the LaunchBulkInstancesOperation.
  final pulumi.Input<String?>? name;
  /// Details of the resource plan.
  final pulumi.Input<Plan?>? plan;
  /// The resource-specific properties for this resource.
  final pulumi.Input<LaunchBulkInstancesOperationProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Zones in which the LaunchBulkInstancesOperation is available
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [BulkActionArgs].
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The location name.
  /// [name] The name of the LaunchBulkInstancesOperation.
  /// [plan] Details of the resource plan.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [zones] Zones in which the LaunchBulkInstancesOperation is available
  const BulkActionArgs({
    this.identity,
    required this.location,
    this.name,
    this.plan,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<LaunchBulkInstancesOperationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory BulkActionArgs.fromMap(Map<String, dynamic> map) {
    return BulkActionArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Plan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchBulkInstancesOperationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
