// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_events_policy.dart';
import 'sku.dart';
import 'sub_resource.dart';

/// {@template pulumi_compute_availability_set_args_doc}
/// The set of arguments for AvailabilitySet.
/// {@endtemplate}
/// {@macro pulumi_compute_availability_set_args_doc}
class AvailabilitySetArgs {
  /// The name of the availability set.
  final pulumi.Input<String>? availabilitySetName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Fault Domain count.
  final pulumi.Input<int>? platformFaultDomainCount;
  /// Update Domain count.
  final pulumi.Input<int>? platformUpdateDomainCount;
  /// Specifies information about the proximity placement group that the availability set should be assigned to. Minimum api-version: 2018-04-01.
  final pulumi.Input<SubResource>? proximityPlacementGroup;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the availability set.
  final pulumi.Input<ScheduledEventsPolicy>? scheduledEventsPolicy;
  /// Sku of the availability set, only name is required to be set. See AvailabilitySetSkuTypes for possible set of values. Use 'Aligned' for virtual machines with managed disks and 'Classic' for virtual machines with unmanaged disks. Default value is 'Classic'.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of references to all virtual machines in the availability set.
  final pulumi.Input<List<SubResource>>? virtualMachines;

  /// Creates a new [AvailabilitySetArgs].
  /// [availabilitySetName] The name of the availability set.
  /// [location] The geo-location where the resource lives
  /// [platformFaultDomainCount] Fault Domain count.
  /// [platformUpdateDomainCount] Update Domain count.
  /// [proximityPlacementGroup] Specifies information about the proximity placement group that the availability set should be assigned to. Minimum api-version: 2018-04-01.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduledEventsPolicy] Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the availability set.
  /// [sku] Sku of the availability set, only name is required to be set. See AvailabilitySetSkuTypes for possible set of values. Use 'Aligned' for virtual machines with managed disks and 'Classic' for virtual machines with unmanaged disks. Default value is 'Classic'.
  /// [tags] Resource tags.
  /// [virtualMachines] A list of references to all virtual machines in the availability set.
  AvailabilitySetArgs({
    String? availabilitySetName,
    String? location,
    int? platformFaultDomainCount,
    int? platformUpdateDomainCount,
    SubResource? proximityPlacementGroup,
    required String resourceGroupName,
    ScheduledEventsPolicy? scheduledEventsPolicy,
    Sku? sku,
    Map<String, String>? tags,
    List<SubResource>? virtualMachines,
  }) :
      availabilitySetName = pulumi.Input.asOptionalInput<String>(availabilitySetName),
      location = pulumi.Input.asOptionalInput<String>(location),
      platformFaultDomainCount = pulumi.Input.asOptionalInput<int>(platformFaultDomainCount),
      platformUpdateDomainCount = pulumi.Input.asOptionalInput<int>(platformUpdateDomainCount),
      proximityPlacementGroup = pulumi.Input.asOptionalInput<SubResource>(proximityPlacementGroup),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scheduledEventsPolicy = pulumi.Input.asOptionalInput<ScheduledEventsPolicy>(scheduledEventsPolicy),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualMachines = pulumi.Input.asOptionalInput<List<SubResource>>(virtualMachines);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'location': ?location,
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'platformUpdateDomainCount': ?platformUpdateDomainCount,
      'proximityPlacementGroup': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(proximityPlacementGroup, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scheduledEventsPolicy': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsPolicy, Map<String, dynamic>>(scheduledEventsPolicy, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'virtualMachines': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AvailabilitySetArgs.fromMap(Map<String, dynamic> map) {
    return AvailabilitySetArgs(
      availabilitySetName: map['availabilitySetName'] == null ? null : map['availabilitySetName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      platformFaultDomainCount: map['platformFaultDomainCount'] == null ? null : map['platformFaultDomainCount'] as int,
      platformUpdateDomainCount: map['platformUpdateDomainCount'] == null ? null : map['platformUpdateDomainCount'] as int,
      proximityPlacementGroup: map['proximityPlacementGroup'] == null ? null : SubResource.fromMap((map['proximityPlacementGroup'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      scheduledEventsPolicy: map['scheduledEventsPolicy'] == null ? null : ScheduledEventsPolicy.fromMap((map['scheduledEventsPolicy'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualMachines: map['virtualMachines'] == null ? null : pulumi.Input.decodeList<SubResource>(map['virtualMachines'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

