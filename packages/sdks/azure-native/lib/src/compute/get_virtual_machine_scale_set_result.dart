// ignore_for_file: unused_element, unnecessary_cast

import 'additional_capabilities_response.dart';
import 'automatic_repairs_policy_response.dart';
import 'extended_location_response.dart';
import 'plan_response.dart';
import 'priority_mix_policy_response.dart';
import 'resiliency_policy_response.dart';
import 'scale_in_policy_response.dart';
import 'scheduled_events_policy_response.dart';
import 'sku_profile_response.dart';
import 'sku_response.dart';
import 'spot_restore_policy_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';
import 'upgrade_policy_response.dart';
import 'virtual_machine_scale_set_identity_response.dart';
import 'virtual_machine_scale_set_vmprofile_response.dart';

/// Result data returned by getVirtualMachineScaleSet.
class GetVirtualMachineScaleSetResult {
  /// Specifies additional capabilities enabled or disabled on the Virtual Machines in the Virtual Machine Scale Set. For instance: whether the Virtual Machines have the capability to support attaching managed data disks with UltraSSD_LRS storage account type.
  final AdditionalCapabilitiesResponse? additionalCapabilities;
  /// Policy for automatic repairs.
  final AutomaticRepairsPolicyResponse? automaticRepairsPolicy;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Optional property which must either be set to True or omitted.
  final bool? constrainedMaximumCapacity;
  /// When Overprovision is enabled, extensions are launched only on the requested number of VMs which are finally kept. This property will hence ensure that the extensions do not run on the extra overprovisioned VMs.
  final bool? doNotRunExtensionsOnOverprovisionedVMs;
  /// Etag is property returned in Create/Update/Get response of the VMSS, so that customer can supply it in the header to ensure optimistic updates
  final String etag;
  /// The extended location of the Virtual Machine Scale Set.
  final ExtendedLocationResponse? extendedLocation;
  /// Specifies information about the dedicated host group that the virtual machine scale set resides in. Minimum api-version: 2020-06-01.
  final SubResourceResponse? hostGroup;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the virtual machine scale set, if configured.
  final VirtualMachineScaleSetIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Specifies the orchestration mode for the virtual machine scale set.
  final String? orchestrationMode;
  /// Specifies whether the Virtual Machine Scale Set should be overprovisioned.
  final bool? overprovision;
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  final PlanResponse? plan;
  /// Fault Domain count for each placement group.
  final int? platformFaultDomainCount;
  /// Specifies the desired targets for mixing Spot and Regular priority VMs within the same VMSS Flex instance.
  final PriorityMixPolicyResponse? priorityMixPolicy;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// Specifies information about the proximity placement group that the virtual machine scale set should be assigned to. Minimum api-version: 2018-04-01.
  final SubResourceResponse? proximityPlacementGroup;
  /// Policy for Resiliency
  final ResiliencyPolicyResponse? resiliencyPolicy;
  /// Specifies the policies applied when scaling in Virtual Machines in the Virtual Machine Scale Set.
  final ScaleInPolicyResponse? scaleInPolicy;
  /// The ScheduledEventsPolicy.
  final ScheduledEventsPolicyResponse? scheduledEventsPolicy;
  /// When true this limits the scale set to a single placement group, of max size 100 virtual machines. NOTE: If singlePlacementGroup is true, it may be modified to false. However, if singlePlacementGroup is false, it may not be modified to true.
  final bool? singlePlacementGroup;
  /// The virtual machine scale set sku.
  final SkuResponse? sku;
  /// Specifies the sku profile for the virtual machine scale set.
  final SkuProfileResponse? skuProfile;
  /// Specifies the Spot Restore properties for the virtual machine scale set.
  final SpotRestorePolicyResponse? spotRestorePolicy;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Specifies the time at which the Virtual Machine Scale Set resource was created. Minimum api-version: 2021-11-01.
  final String timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Specifies the ID which uniquely identifies a Virtual Machine Scale Set.
  final String uniqueId;
  /// The upgrade policy.
  final UpgradePolicyResponse? upgradePolicy;
  /// The virtual machine profile.
  final VirtualMachineScaleSetVMProfileResponse? virtualMachineProfile;
  /// Specifies the align mode between Virtual Machine Scale Set compute and storage Fault Domain count.
  final String? zonalPlatformFaultDomainAlignMode;
  /// Whether to force strictly even Virtual Machine distribution cross x-zones in case there is zone outage. zoneBalance property can only be set if the zones property of the scale set contains more than one zone. If there are no zones or only one zone specified, then zoneBalance property should not be set.
  final bool? zoneBalance;
  /// The availability zones.
  final List<String>? zones;

  /// Creates a new [GetVirtualMachineScaleSetResult].
  /// [additionalCapabilities] Specifies additional capabilities enabled or disabled on the Virtual Machines in the Virtual Machine Scale Set. For instance: whether the Virtual Machines have the capability to support attaching managed data disks with UltraSSD_LRS storage account type.
  /// [automaticRepairsPolicy] Policy for automatic repairs.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [constrainedMaximumCapacity] Optional property which must either be set to True or omitted.
  /// [doNotRunExtensionsOnOverprovisionedVMs] When Overprovision is enabled, extensions are launched only on the requested number of VMs which are finally kept. This property will hence ensure that the extensions do not run on the extra overprovisioned VMs.
  /// [etag] Etag is property returned in Create/Update/Get response of the VMSS, so that customer can supply it in the header to ensure optimistic updates
  /// [extendedLocation] The extended location of the Virtual Machine Scale Set.
  /// [hostGroup] Specifies information about the dedicated host group that the virtual machine scale set resides in. Minimum api-version: 2020-06-01.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the virtual machine scale set, if configured.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [orchestrationMode] Specifies the orchestration mode for the virtual machine scale set.
  /// [overprovision] Specifies whether the Virtual Machine Scale Set should be overprovisioned.
  /// [plan] Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  /// [platformFaultDomainCount] Fault Domain count for each placement group.
  /// [priorityMixPolicy] Specifies the desired targets for mixing Spot and Regular priority VMs within the same VMSS Flex instance.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [proximityPlacementGroup] Specifies information about the proximity placement group that the virtual machine scale set should be assigned to. Minimum api-version: 2018-04-01.
  /// [resiliencyPolicy] Policy for Resiliency
  /// [scaleInPolicy] Specifies the policies applied when scaling in Virtual Machines in the Virtual Machine Scale Set.
  /// [scheduledEventsPolicy] The ScheduledEventsPolicy.
  /// [singlePlacementGroup] When true this limits the scale set to a single placement group, of max size 100 virtual machines. NOTE: If singlePlacementGroup is true, it may be modified to false. However, if singlePlacementGroup is false, it may not be modified to true.
  /// [sku] The virtual machine scale set sku.
  /// [skuProfile] Specifies the sku profile for the virtual machine scale set.
  /// [spotRestorePolicy] Specifies the Spot Restore properties for the virtual machine scale set.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeCreated] Specifies the time at which the Virtual Machine Scale Set resource was created. Minimum api-version: 2021-11-01.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueId] Specifies the ID which uniquely identifies a Virtual Machine Scale Set.
  /// [upgradePolicy] The upgrade policy.
  /// [virtualMachineProfile] The virtual machine profile.
  /// [zonalPlatformFaultDomainAlignMode] Specifies the align mode between Virtual Machine Scale Set compute and storage Fault Domain count.
  /// [zoneBalance] Whether to force strictly even Virtual Machine distribution cross x-zones in case there is zone outage. zoneBalance property can only be set if the zones property of the scale set contains more than one zone. If there are no zones or only one zone specified, then zoneBalance property should not be set.
  /// [zones] The availability zones.
  GetVirtualMachineScaleSetResult({
    this.additionalCapabilities,
    this.automaticRepairsPolicy,
    required this.azureApiVersion,
    this.constrainedMaximumCapacity,
    this.doNotRunExtensionsOnOverprovisionedVMs,
    required this.etag,
    this.extendedLocation,
    this.hostGroup,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    this.orchestrationMode,
    this.overprovision,
    this.plan,
    this.platformFaultDomainCount,
    this.priorityMixPolicy,
    required this.provisioningState,
    this.proximityPlacementGroup,
    this.resiliencyPolicy,
    this.scaleInPolicy,
    this.scheduledEventsPolicy,
    this.singlePlacementGroup,
    this.sku,
    this.skuProfile,
    this.spotRestorePolicy,
    required this.systemData,
    this.tags,
    required this.timeCreated,
    required this.type,
    required this.uniqueId,
    this.upgradePolicy,
    this.virtualMachineProfile,
    this.zonalPlatformFaultDomainAlignMode,
    this.zoneBalance,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?additionalCapabilities?.toMap(),
      'automaticRepairsPolicy': ?automaticRepairsPolicy?.toMap(),
      'azureApiVersion': azureApiVersion,
      'constrainedMaximumCapacity': ?constrainedMaximumCapacity,
      'doNotRunExtensionsOnOverprovisionedVMs': ?doNotRunExtensionsOnOverprovisionedVMs,
      'etag': etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'hostGroup': ?hostGroup?.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'orchestrationMode': ?orchestrationMode,
      'overprovision': ?overprovision,
      'plan': ?plan?.toMap(),
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'priorityMixPolicy': ?priorityMixPolicy?.toMap(),
      'provisioningState': provisioningState,
      'proximityPlacementGroup': ?proximityPlacementGroup?.toMap(),
      'resiliencyPolicy': ?resiliencyPolicy?.toMap(),
      'scaleInPolicy': ?scaleInPolicy?.toMap(),
      'scheduledEventsPolicy': ?scheduledEventsPolicy?.toMap(),
      'singlePlacementGroup': ?singlePlacementGroup,
      'sku': ?sku?.toMap(),
      'skuProfile': ?skuProfile?.toMap(),
      'spotRestorePolicy': ?spotRestorePolicy?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeCreated': timeCreated,
      'type': type,
      'uniqueId': uniqueId,
      'upgradePolicy': ?upgradePolicy?.toMap(),
      'virtualMachineProfile': ?virtualMachineProfile?.toMap(),
      'zonalPlatformFaultDomainAlignMode': ?zonalPlatformFaultDomainAlignMode,
      'zoneBalance': ?zoneBalance,
      'zones': ?zones,
    };
  }

  factory GetVirtualMachineScaleSetResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetResult(
      additionalCapabilities: (() { final guardedValue = map['additionalCapabilities']; if (guardedValue == null) return null; return AdditionalCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      automaticRepairsPolicy: (() { final guardedValue = map['automaticRepairsPolicy']; if (guardedValue == null) return null; return AutomaticRepairsPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      constrainedMaximumCapacity: (() { final guardedValue = map['constrainedMaximumCapacity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      doNotRunExtensionsOnOverprovisionedVMs: (() { final guardedValue = map['doNotRunExtensionsOnOverprovisionedVMs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: map['etag'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostGroup: (() { final guardedValue = map['hostGroup']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return VirtualMachineScaleSetIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      orchestrationMode: (() { final guardedValue = map['orchestrationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      overprovision: (() { final guardedValue = map['overprovision']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      platformFaultDomainCount: (() { final guardedValue = map['platformFaultDomainCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      priorityMixPolicy: (() { final guardedValue = map['priorityMixPolicy']; if (guardedValue == null) return null; return PriorityMixPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      proximityPlacementGroup: (() { final guardedValue = map['proximityPlacementGroup']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resiliencyPolicy: (() { final guardedValue = map['resiliencyPolicy']; if (guardedValue == null) return null; return ResiliencyPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      scaleInPolicy: (() { final guardedValue = map['scaleInPolicy']; if (guardedValue == null) return null; return ScaleInPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      scheduledEventsPolicy: (() { final guardedValue = map['scheduledEventsPolicy']; if (guardedValue == null) return null; return ScheduledEventsPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      singlePlacementGroup: (() { final guardedValue = map['singlePlacementGroup']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      skuProfile: (() { final guardedValue = map['skuProfile']; if (guardedValue == null) return null; return SkuProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spotRestorePolicy: (() { final guardedValue = map['spotRestorePolicy']; if (guardedValue == null) return null; return SpotRestorePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeCreated: map['timeCreated'] as String,
      type: map['type'] as String,
      uniqueId: map['uniqueId'] as String,
      upgradePolicy: (() { final guardedValue = map['upgradePolicy']; if (guardedValue == null) return null; return UpgradePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      virtualMachineProfile: (() { final guardedValue = map['virtualMachineProfile']; if (guardedValue == null) return null; return VirtualMachineScaleSetVMProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zonalPlatformFaultDomainAlignMode: (() { final guardedValue = map['zonalPlatformFaultDomainAlignMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneBalance: (() { final guardedValue = map['zoneBalance']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

