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
    pulumi.Output<AdditionalCapabilities>? additionalCapabilities,
    pulumi.Output<AutomaticRepairsPolicy>? automaticRepairsPolicy,
    pulumi.Output<bool>? constrainedMaximumCapacity,
    pulumi.Output<bool>? doNotRunExtensionsOnOverprovisionedVMs,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<SubResource>? hostGroup,
    pulumi.Output<VirtualMachineScaleSetIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? orchestrationMode,
    pulumi.Output<bool>? overprovision,
    pulumi.Output<Plan>? plan,
    pulumi.Output<int>? platformFaultDomainCount,
    pulumi.Output<PriorityMixPolicy>? priorityMixPolicy,
    pulumi.Output<SubResource>? proximityPlacementGroup,
    pulumi.Output<ResiliencyPolicy>? resiliencyPolicy,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ScaleInPolicy>? scaleInPolicy,
    pulumi.Output<ScheduledEventsPolicy>? scheduledEventsPolicy,
    pulumi.Output<bool>? singlePlacementGroup,
    pulumi.Output<Sku>? sku,
    pulumi.Output<SkuProfile>? skuProfile,
    pulumi.Output<SpotRestorePolicy>? spotRestorePolicy,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<UpgradePolicy>? upgradePolicy,
    pulumi.Output<VirtualMachineScaleSetVMProfile>? virtualMachineProfile,
    pulumi.Output<String>? vmScaleSetName,
    pulumi.Output<String>? zonalPlatformFaultDomainAlignMode,
    pulumi.Output<bool>? zoneBalance,
    pulumi.Output<List<String>>? zones,
  }) :
      additionalCapabilities = pulumi.Input.asOptionalInput<AdditionalCapabilities>(additionalCapabilities),
      automaticRepairsPolicy = pulumi.Input.asOptionalInput<AutomaticRepairsPolicy>(automaticRepairsPolicy),
      constrainedMaximumCapacity = pulumi.Input.asOptionalInput<bool>(constrainedMaximumCapacity),
      doNotRunExtensionsOnOverprovisionedVMs = pulumi.Input.asOptionalInput<bool>(doNotRunExtensionsOnOverprovisionedVMs),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      hostGroup = pulumi.Input.asOptionalInput<SubResource>(hostGroup),
      identity = pulumi.Input.asOptionalInput<VirtualMachineScaleSetIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      orchestrationMode = pulumi.Input.asOptionalInput<String>(orchestrationMode),
      overprovision = pulumi.Input.asOptionalInput<bool>(overprovision),
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      platformFaultDomainCount = pulumi.Input.asOptionalInput<int>(platformFaultDomainCount),
      priorityMixPolicy = pulumi.Input.asOptionalInput<PriorityMixPolicy>(priorityMixPolicy),
      proximityPlacementGroup = pulumi.Input.asOptionalInput<SubResource>(proximityPlacementGroup),
      resiliencyPolicy = pulumi.Input.asOptionalInput<ResiliencyPolicy>(resiliencyPolicy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scaleInPolicy = pulumi.Input.asOptionalInput<ScaleInPolicy>(scaleInPolicy),
      scheduledEventsPolicy = pulumi.Input.asOptionalInput<ScheduledEventsPolicy>(scheduledEventsPolicy),
      singlePlacementGroup = pulumi.Input.asOptionalInput<bool>(singlePlacementGroup),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      skuProfile = pulumi.Input.asOptionalInput<SkuProfile>(skuProfile),
      spotRestorePolicy = pulumi.Input.asOptionalInput<SpotRestorePolicy>(spotRestorePolicy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradePolicy = pulumi.Input.asOptionalInput<UpgradePolicy>(upgradePolicy),
      virtualMachineProfile = pulumi.Input.asOptionalInput<VirtualMachineScaleSetVMProfile>(virtualMachineProfile),
      vmScaleSetName = pulumi.Input.asOptionalInput<String>(vmScaleSetName),
      zonalPlatformFaultDomainAlignMode = pulumi.Input.asOptionalInput<String>(zonalPlatformFaultDomainAlignMode),
      zoneBalance = pulumi.Input.asOptionalInput<bool>(zoneBalance),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      additionalCapabilities: map['additionalCapabilities'] == null ? null : pulumi.Output.create<AdditionalCapabilities>(AdditionalCapabilities.fromMap((map['additionalCapabilities'] as Map).cast<String, dynamic>())),
      automaticRepairsPolicy: map['automaticRepairsPolicy'] == null ? null : pulumi.Output.create<AutomaticRepairsPolicy>(AutomaticRepairsPolicy.fromMap((map['automaticRepairsPolicy'] as Map).cast<String, dynamic>())),
      constrainedMaximumCapacity: map['constrainedMaximumCapacity'] == null ? null : pulumi.Output.create<bool>(map['constrainedMaximumCapacity'] as bool),
      doNotRunExtensionsOnOverprovisionedVMs: map['doNotRunExtensionsOnOverprovisionedVMs'] == null ? null : pulumi.Output.create<bool>(map['doNotRunExtensionsOnOverprovisionedVMs'] as bool),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      hostGroup: map['hostGroup'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['hostGroup'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<VirtualMachineScaleSetIdentity>(VirtualMachineScaleSetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      orchestrationMode: map['orchestrationMode'] == null ? null : pulumi.Output.create<String>(map['orchestrationMode'] as String),
      overprovision: map['overprovision'] == null ? null : pulumi.Output.create<bool>(map['overprovision'] as bool),
      plan: map['plan'] == null ? null : pulumi.Output.create<Plan>(Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      platformFaultDomainCount: map['platformFaultDomainCount'] == null ? null : pulumi.Output.create<int>(map['platformFaultDomainCount'] as int),
      priorityMixPolicy: map['priorityMixPolicy'] == null ? null : pulumi.Output.create<PriorityMixPolicy>(PriorityMixPolicy.fromMap((map['priorityMixPolicy'] as Map).cast<String, dynamic>())),
      proximityPlacementGroup: map['proximityPlacementGroup'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['proximityPlacementGroup'] as Map).cast<String, dynamic>())),
      resiliencyPolicy: map['resiliencyPolicy'] == null ? null : pulumi.Output.create<ResiliencyPolicy>(ResiliencyPolicy.fromMap((map['resiliencyPolicy'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scaleInPolicy: map['scaleInPolicy'] == null ? null : pulumi.Output.create<ScaleInPolicy>(ScaleInPolicy.fromMap((map['scaleInPolicy'] as Map).cast<String, dynamic>())),
      scheduledEventsPolicy: map['scheduledEventsPolicy'] == null ? null : pulumi.Output.create<ScheduledEventsPolicy>(ScheduledEventsPolicy.fromMap((map['scheduledEventsPolicy'] as Map).cast<String, dynamic>())),
      singlePlacementGroup: map['singlePlacementGroup'] == null ? null : pulumi.Output.create<bool>(map['singlePlacementGroup'] as bool),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      skuProfile: map['skuProfile'] == null ? null : pulumi.Output.create<SkuProfile>(SkuProfile.fromMap((map['skuProfile'] as Map).cast<String, dynamic>())),
      spotRestorePolicy: map['spotRestorePolicy'] == null ? null : pulumi.Output.create<SpotRestorePolicy>(SpotRestorePolicy.fromMap((map['spotRestorePolicy'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradePolicy: map['upgradePolicy'] == null ? null : pulumi.Output.create<UpgradePolicy>(UpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())),
      virtualMachineProfile: map['virtualMachineProfile'] == null ? null : pulumi.Output.create<VirtualMachineScaleSetVMProfile>(VirtualMachineScaleSetVMProfile.fromMap((map['virtualMachineProfile'] as Map).cast<String, dynamic>())),
      vmScaleSetName: map['vmScaleSetName'] == null ? null : pulumi.Output.create<String>(map['vmScaleSetName'] as String),
      zonalPlatformFaultDomainAlignMode: map['zonalPlatformFaultDomainAlignMode'] == null ? null : pulumi.Output.create<String>(map['zonalPlatformFaultDomainAlignMode'] as String),
      zoneBalance: map['zoneBalance'] == null ? null : pulumi.Output.create<bool>(map['zoneBalance'] as bool),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

