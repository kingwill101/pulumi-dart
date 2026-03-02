// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_capabilities.dart';
import 'automatic_repairs_policy.dart';
import 'extended_location.dart';
import 'plan.dart';
import 'priority_mix_policy.dart';
import 'resiliency_policy.dart';
import 'scale_in_policy.dart';
import 'scheduled_events_policy.dart';
import 'sku.dart';
import 'sku_profile.dart';
import 'spot_restore_policy.dart';
import 'sub_resource.dart';
import 'upgrade_policy.dart';
import 'virtual_machine_scale_set_identity.dart';
import 'virtual_machine_scale_set_vmprofile.dart';

/// {@template pulumi_compute_virtual_machine_scale_set_args_doc}
/// The set of arguments for VirtualMachineScaleSet.
/// {@endtemplate}
/// {@macro pulumi_compute_virtual_machine_scale_set_args_doc}
class VirtualMachineScaleSetArgs {
  /// Specifies additional capabilities enabled or disabled on the Virtual Machines in the Virtual Machine Scale Set. For instance: whether the Virtual Machines have the capability to support attaching managed data disks with UltraSSD_LRS storage account type.
  final pulumi.Input<AdditionalCapabilities>? additionalCapabilities;
  /// Policy for automatic repairs.
  final pulumi.Input<AutomaticRepairsPolicy>? automaticRepairsPolicy;
  /// Optional property which must either be set to True or omitted.
  final pulumi.Input<bool>? constrainedMaximumCapacity;
  /// When Overprovision is enabled, extensions are launched only on the requested number of VMs which are finally kept. This property will hence ensure that the extensions do not run on the extra overprovisioned VMs.
  final pulumi.Input<bool>? doNotRunExtensionsOnOverprovisionedVMs;
  /// The extended location of the Virtual Machine Scale Set.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Specifies information about the dedicated host group that the virtual machine scale set resides in. Minimum api-version: 2020-06-01.
  final pulumi.Input<SubResource>? hostGroup;
  /// The identity of the virtual machine scale set, if configured.
  final pulumi.Input<VirtualMachineScaleSetIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Specifies the orchestration mode for the virtual machine scale set.
  final pulumi.Input<String>? orchestrationMode;
  /// Specifies whether the Virtual Machine Scale Set should be overprovisioned.
  final pulumi.Input<bool>? overprovision;
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started ->**. Enter any required information and then click **Save**.
  final pulumi.Input<Plan>? plan;
  /// Fault Domain count for each placement group.
  final pulumi.Input<int>? platformFaultDomainCount;
  /// Specifies the desired targets for mixing Spot and Regular priority VMs within the same VMSS Flex instance.
  final pulumi.Input<PriorityMixPolicy>? priorityMixPolicy;
  /// Specifies information about the proximity placement group that the virtual machine scale set should be assigned to. Minimum api-version: 2018-04-01.
  final pulumi.Input<SubResource>? proximityPlacementGroup;
  /// Policy for Resiliency
  final pulumi.Input<ResiliencyPolicy>? resiliencyPolicy;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the policies applied when scaling in Virtual Machines in the Virtual Machine Scale Set.
  final pulumi.Input<ScaleInPolicy>? scaleInPolicy;
  /// The ScheduledEventsPolicy.
  final pulumi.Input<ScheduledEventsPolicy>? scheduledEventsPolicy;
  /// When true this limits the scale set to a single placement group, of max size 100 virtual machines. NOTE: If singlePlacementGroup is true, it may be modified to false. However, if singlePlacementGroup is false, it may not be modified to true.
  final pulumi.Input<bool>? singlePlacementGroup;
  /// The virtual machine scale set sku.
  final pulumi.Input<Sku>? sku;
  /// Specifies the sku profile for the virtual machine scale set.
  final pulumi.Input<SkuProfile>? skuProfile;
  /// Specifies the Spot Restore properties for the virtual machine scale set.
  final pulumi.Input<SpotRestorePolicy>? spotRestorePolicy;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The upgrade policy.
  final pulumi.Input<UpgradePolicy>? upgradePolicy;
  /// The virtual machine profile.
  final pulumi.Input<VirtualMachineScaleSetVMProfile>? virtualMachineProfile;
  /// The name of the VM scale set.
  final pulumi.Input<String>? vmScaleSetName;
  /// Specifies the align mode between Virtual Machine Scale Set compute and storage Fault Domain count.
  final pulumi.Input<String>? zonalPlatformFaultDomainAlignMode;
  /// Whether to force strictly even Virtual Machine distribution cross x-zones in case there is zone outage. zoneBalance property can only be set if the zones property of the scale set contains more than one zone. If there are no zones or only one zone specified, then zoneBalance property should not be set.
  final pulumi.Input<bool>? zoneBalance;
  /// The availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [VirtualMachineScaleSetArgs].
  /// [additionalCapabilities] Specifies additional capabilities enabled or disabled on the Virtual Machines in the Virtual Machine Scale Set. For instance: whether the Virtual Machines have the capability to support attaching managed data disks with UltraSSD_LRS storage account type.
  /// [automaticRepairsPolicy] Policy for automatic repairs.
  /// [constrainedMaximumCapacity] Optional property which must either be set to True or omitted.
  /// [doNotRunExtensionsOnOverprovisionedVMs] When Overprovision is enabled, extensions are launched only on the requested number of VMs which are finally kept. This property will hence ensure that the extensions do not run on the extra overprovisioned VMs.
  /// [extendedLocation] The extended location of the Virtual Machine Scale Set.
  /// [hostGroup] Specifies information about the dedicated host group that the virtual machine scale set resides in. Minimum api-version: 2020-06-01.
  /// [identity] The identity of the virtual machine scale set, if configured.
  /// [location] The geo-location where the resource lives
  /// [orchestrationMode] Specifies the orchestration mode for the virtual machine scale set.
  /// [overprovision] Specifies whether the Virtual Machine Scale Set should be overprovisioned.
  /// [plan] Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started ->**. Enter any required information and then click **Save**.
  /// [platformFaultDomainCount] Fault Domain count for each placement group.
  /// [priorityMixPolicy] Specifies the desired targets for mixing Spot and Regular priority VMs within the same VMSS Flex instance.
  /// [proximityPlacementGroup] Specifies information about the proximity placement group that the virtual machine scale set should be assigned to. Minimum api-version: 2018-04-01.
  /// [resiliencyPolicy] Policy for Resiliency
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scaleInPolicy] Specifies the policies applied when scaling in Virtual Machines in the Virtual Machine Scale Set.
  /// [scheduledEventsPolicy] The ScheduledEventsPolicy.
  /// [singlePlacementGroup] When true this limits the scale set to a single placement group, of max size 100 virtual machines. NOTE: If singlePlacementGroup is true, it may be modified to false. However, if singlePlacementGroup is false, it may not be modified to true.
  /// [sku] The virtual machine scale set sku.
  /// [skuProfile] Specifies the sku profile for the virtual machine scale set.
  /// [spotRestorePolicy] Specifies the Spot Restore properties for the virtual machine scale set.
  /// [tags] Resource tags.
  /// [upgradePolicy] The upgrade policy.
  /// [virtualMachineProfile] The virtual machine profile.
  /// [vmScaleSetName] The name of the VM scale set.
  /// [zonalPlatformFaultDomainAlignMode] Specifies the align mode between Virtual Machine Scale Set compute and storage Fault Domain count.
  /// [zoneBalance] Whether to force strictly even Virtual Machine distribution cross x-zones in case there is zone outage. zoneBalance property can only be set if the zones property of the scale set contains more than one zone. If there are no zones or only one zone specified, then zoneBalance property should not be set.
  /// [zones] The availability zones.
  VirtualMachineScaleSetArgs({
    this.additionalCapabilities,
    this.automaticRepairsPolicy,
    this.constrainedMaximumCapacity,
    this.doNotRunExtensionsOnOverprovisionedVMs,
    this.extendedLocation,
    this.hostGroup,
    this.identity,
    this.location,
    this.orchestrationMode,
    this.overprovision,
    this.plan,
    this.platformFaultDomainCount,
    this.priorityMixPolicy,
    this.proximityPlacementGroup,
    this.resiliencyPolicy,
    required this.resourceGroupName,
    this.scaleInPolicy,
    this.scheduledEventsPolicy,
    this.singlePlacementGroup,
    this.sku,
    this.skuProfile,
    this.spotRestorePolicy,
    this.tags,
    this.upgradePolicy,
    this.virtualMachineProfile,
    this.vmScaleSetName,
    this.zonalPlatformFaultDomainAlignMode,
    this.zoneBalance,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<AdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'automaticRepairsPolicy': ?pulumi.Input.mapOptionalInputValue<AutomaticRepairsPolicy, Map<String, dynamic>>(automaticRepairsPolicy, (value) => value.toMap()),
      'constrainedMaximumCapacity': ?constrainedMaximumCapacity,
      'doNotRunExtensionsOnOverprovisionedVMs': ?doNotRunExtensionsOnOverprovisionedVMs,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hostGroup': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(hostGroup, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'orchestrationMode': ?orchestrationMode,
      'overprovision': ?overprovision,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'priorityMixPolicy': ?pulumi.Input.mapOptionalInputValue<PriorityMixPolicy, Map<String, dynamic>>(priorityMixPolicy, (value) => value.toMap()),
      'proximityPlacementGroup': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(proximityPlacementGroup, (value) => value.toMap()),
      'resiliencyPolicy': ?pulumi.Input.mapOptionalInputValue<ResiliencyPolicy, Map<String, dynamic>>(resiliencyPolicy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scaleInPolicy': ?pulumi.Input.mapOptionalInputValue<ScaleInPolicy, Map<String, dynamic>>(scaleInPolicy, (value) => value.toMap()),
      'scheduledEventsPolicy': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsPolicy, Map<String, dynamic>>(scheduledEventsPolicy, (value) => value.toMap()),
      'singlePlacementGroup': ?singlePlacementGroup,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'skuProfile': ?pulumi.Input.mapOptionalInputValue<SkuProfile, Map<String, dynamic>>(skuProfile, (value) => value.toMap()),
      'spotRestorePolicy': ?pulumi.Input.mapOptionalInputValue<SpotRestorePolicy, Map<String, dynamic>>(spotRestorePolicy, (value) => value.toMap()),
      'tags': ?tags,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<UpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'virtualMachineProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetVMProfile, Map<String, dynamic>>(virtualMachineProfile, (value) => value.toMap()),
      'vmScaleSetName': ?vmScaleSetName,
      'zonalPlatformFaultDomainAlignMode': ?zonalPlatformFaultDomainAlignMode,
      'zoneBalance': ?zoneBalance,
      'zones': ?zones,
    };
  }

  factory VirtualMachineScaleSetArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetArgs(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : (AdditionalCapabilities.fromMap((map['additionalCapabilities']! as Map).cast<String, dynamic>())).input(),
      automaticRepairsPolicy: map['automaticRepairsPolicy'] == null ? null : (AutomaticRepairsPolicy.fromMap((map['automaticRepairsPolicy']! as Map).cast<String, dynamic>())).input(),
      constrainedMaximumCapacity: map['constrainedMaximumCapacity'] == null ? null : (map['constrainedMaximumCapacity']! as bool).input(),
      doNotRunExtensionsOnOverprovisionedVMs: map['doNotRunExtensionsOnOverprovisionedVMs'] == null ? null : (map['doNotRunExtensionsOnOverprovisionedVMs']! as bool).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      hostGroup: map['hostGroup'] == null ? null : (SubResource.fromMap((map['hostGroup']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (VirtualMachineScaleSetIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      orchestrationMode: map['orchestrationMode'] == null ? null : (map['orchestrationMode']! as String).input(),
      overprovision: map['overprovision'] == null ? null : (map['overprovision']! as bool).input(),
      plan: map['plan'] == null ? null : (Plan.fromMap((map['plan']! as Map).cast<String, dynamic>())).input(),
      platformFaultDomainCount: map['platformFaultDomainCount'] == null ? null : (map['platformFaultDomainCount']! as int).input(),
      priorityMixPolicy: map['priorityMixPolicy'] == null ? null : (PriorityMixPolicy.fromMap((map['priorityMixPolicy']! as Map).cast<String, dynamic>())).input(),
      proximityPlacementGroup: map['proximityPlacementGroup'] == null ? null : (SubResource.fromMap((map['proximityPlacementGroup']! as Map).cast<String, dynamic>())).input(),
      resiliencyPolicy: map['resiliencyPolicy'] == null ? null : (ResiliencyPolicy.fromMap((map['resiliencyPolicy']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scaleInPolicy: map['scaleInPolicy'] == null ? null : (ScaleInPolicy.fromMap((map['scaleInPolicy']! as Map).cast<String, dynamic>())).input(),
      scheduledEventsPolicy: map['scheduledEventsPolicy'] == null ? null : (ScheduledEventsPolicy.fromMap((map['scheduledEventsPolicy']! as Map).cast<String, dynamic>())).input(),
      singlePlacementGroup: map['singlePlacementGroup'] == null ? null : (map['singlePlacementGroup']! as bool).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      skuProfile: map['skuProfile'] == null ? null : (SkuProfile.fromMap((map['skuProfile']! as Map).cast<String, dynamic>())).input(),
      spotRestorePolicy: map['spotRestorePolicy'] == null ? null : (SpotRestorePolicy.fromMap((map['spotRestorePolicy']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      upgradePolicy: map['upgradePolicy'] == null ? null : (UpgradePolicy.fromMap((map['upgradePolicy']! as Map).cast<String, dynamic>())).input(),
      virtualMachineProfile: map['virtualMachineProfile'] == null ? null : (VirtualMachineScaleSetVMProfile.fromMap((map['virtualMachineProfile']! as Map).cast<String, dynamic>())).input(),
      vmScaleSetName: map['vmScaleSetName'] == null ? null : (map['vmScaleSetName']! as String).input(),
      zonalPlatformFaultDomainAlignMode: map['zonalPlatformFaultDomainAlignMode'] == null ? null : (map['zonalPlatformFaultDomainAlignMode']! as String).input(),
      zoneBalance: map['zoneBalance'] == null ? null : (map['zoneBalance']! as bool).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

