// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_group_machinelearningservices.dart';
import 'managed_service_identity.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_capacity_reservation_group_args_doc}
/// The set of arguments for CapacityReservationGroup.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_capacity_reservation_group_args_doc}
class CapacityReservationGroupArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CapacityReservationGroupMachinelearningservices> capacityReservationGroupProperties;
  /// Group ID
  final pulumi.Input<String>? groupId;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Sku details required for ARM contract for Autoscaling.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CapacityReservationGroupArgs].
  /// [capacityReservationGroupProperties] [Required] Additional attributes of the entity.
  /// [groupId] Group ID
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [tags] Resource tags.
  CapacityReservationGroupArgs({
    required pulumi.Output<CapacityReservationGroupMachinelearningservices> capacityReservationGroupProperties,
    pulumi.Output<String>? groupId,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      capacityReservationGroupProperties = pulumi.Input.asInput<CapacityReservationGroupMachinelearningservices>(capacityReservationGroupProperties),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationGroupProperties': capacityReservationGroupProperties,
      'groupId': ?groupId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory CapacityReservationGroupArgs.fromMap(Map<String, dynamic> map) {
    return CapacityReservationGroupArgs(
      capacityReservationGroupProperties: pulumi.Output.create<CapacityReservationGroupMachinelearningservices>(map['capacityReservationGroupProperties'] as CapacityReservationGroupMachinelearningservices),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

