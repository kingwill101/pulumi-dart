// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_capabilities.dart';
import 'application_profile.dart';
import 'billing_profile.dart';
import 'capacity_reservation_profile.dart';
import 'diagnostics_profile.dart';
import 'extended_location.dart';
import 'hardware_profile.dart';
import 'network_profile.dart';
import 'osprofile.dart';
import 'placement.dart';
import 'plan.dart';
import 'scheduled_events_policy.dart';
import 'scheduled_events_profile.dart';
import 'security_profile.dart';
import 'storage_profile.dart';
import 'sub_resource.dart';
import 'virtual_machine_identity.dart';

/// {@template pulumi_compute_virtual_machine_args_doc}
/// The set of arguments for VirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_compute_virtual_machine_args_doc}
class VirtualMachineArgs {
  /// Specifies additional capabilities enabled or disabled on the virtual machine.
  final pulumi.Input<AdditionalCapabilities>? additionalCapabilities;
  /// Specifies the gallery applications that should be made available to the VM/VMSS.
  final pulumi.Input<ApplicationProfile>? applicationProfile;
  /// Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to availability set at creation time. The availability set to which the VM is being added should be under the same resource group as the availability set resource. An existing VM cannot be added to an availability set. This property cannot exist along with a non-null properties.virtualMachineScaleSet reference.
  final pulumi.Input<SubResource>? availabilitySet;
  /// Specifies the billing related details of a Azure Spot virtual machine. Minimum api-version: 2019-03-01.
  final pulumi.Input<BillingProfile>? billingProfile;
  /// Specifies information about the capacity reservation that is used to allocate virtual machine. Minimum api-version: 2021-04-01.
  final pulumi.Input<CapacityReservationProfile>? capacityReservation;
  /// Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  final pulumi.Input<DiagnosticsProfile>? diagnosticsProfile;
  /// Specifies the eviction policy for the Azure Spot virtual machine and Azure Spot scale set. For Azure Spot virtual machines, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2019-03-01. For Azure Spot scale sets, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2017-10-30-preview.
  final pulumi.Input<String>? evictionPolicy;
  /// The extended location of the Virtual Machine.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum api-version: 2020-06-01.
  final pulumi.Input<String>? extensionsTimeBudget;
  /// Specifies the hardware settings for the virtual machine.
  final pulumi.Input<HardwareProfile>? hardwareProfile;
  /// Specifies information about the dedicated host that the virtual machine resides in. Minimum api-version: 2018-10-01.
  final pulumi.Input<SubResource>? host;
  /// Specifies information about the dedicated host group that the virtual machine resides in. **Note:** User cannot specify both host and hostGroup properties. Minimum api-version: 2020-06-01.
  final pulumi.Input<SubResource>? hostGroup;
  /// The identity of the virtual machine, if configured.
  final pulumi.Input<VirtualMachineIdentity>? identity;
  /// Specifies that the image or disk that is being used was licensed on-premises. <br><br> Possible values for Windows Server operating system are: <br><br> Windows_Client <br><br> Windows_Server <br><br> Possible values for Linux Server operating system are: <br><br> RHEL_BYOS (for RHEL) <br><br> SLES_BYOS (for SUSE) <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) <br><br> [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) <br><br> Minimum api-version: 2015-06-15
  final pulumi.Input<String>? licenseType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Specifies the network interfaces of the virtual machine.
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// Specifies the operating system settings used while creating the virtual machine. Some of the settings cannot be changed once VM is provisioned.
  final pulumi.Input<OSProfile>? osProfile;
  /// Placement section specifies the user-defined constraints for virtual machine hardware placement. This property cannot be changed once VM is provisioned. Minimum api-version: 2024-11-01.
  final pulumi.Input<Placement>? placement;
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started ->**. Enter any required information and then click **Save**.
  final pulumi.Input<Plan>? plan;
  /// Specifies the scale set logical fault domain into which the Virtual Machine will be created. By default, the Virtual Machine will by automatically assigned to a fault domain that best maintains balance across available fault domains. This is applicable only if the 'virtualMachineScaleSet' property of this Virtual Machine is set. The Virtual Machine Scale Set that is referenced, must have 'platformFaultDomainCount' greater than 1. This property cannot be updated once the Virtual Machine is created. Fault domain assignment can be viewed in the Virtual Machine Instance View. Minimum api‐version: 2020‐12‐01.
  final pulumi.Input<int>? platformFaultDomain;
  /// Specifies the priority for the virtual machine. Minimum api-version: 2019-03-01
  final pulumi.Input<String>? priority;
  /// Specifies information about the proximity placement group that the virtual machine should be assigned to. Minimum api-version: 2018-04-01.
  final pulumi.Input<SubResource>? proximityPlacementGroup;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the virtual machine.
  final pulumi.Input<ScheduledEventsPolicy>? scheduledEventsPolicy;
  /// Specifies Scheduled Event related configurations.
  final pulumi.Input<ScheduledEventsProfile>? scheduledEventsProfile;
  /// Specifies the Security related profile settings for the virtual machine.
  final pulumi.Input<SecurityProfile>? securityProfile;
  /// Specifies the storage settings for the virtual machine disks.
  final pulumi.Input<StorageProfile>? storageProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01.
  final pulumi.Input<String>? userData;
  /// Specifies information about the virtual machine scale set that the virtual machine should be assigned to. Virtual machines specified in the same virtual machine scale set are allocated to different nodes to maximize availability. Currently, a VM can only be added to virtual machine scale set at creation time. An existing VM cannot be added to a virtual machine scale set. This property cannot exist along with a non-null properties.availabilitySet reference. Minimum api‐version: 2019‐03‐01.
  final pulumi.Input<SubResource>? virtualMachineScaleSet;
  /// The name of the virtual machine.
  final pulumi.Input<String>? vmName;
  /// The availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [VirtualMachineArgs].
  /// [additionalCapabilities] Specifies additional capabilities enabled or disabled on the virtual machine.
  /// [applicationProfile] Specifies the gallery applications that should be made available to the VM/VMSS.
  /// [availabilitySet] Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to availability set at creation time. The availability set to which the VM is being added should be under the same resource group as the availability set resource. An existing VM cannot be added to an availability set. This property cannot exist along with a non-null properties.virtualMachineScaleSet reference.
  /// [billingProfile] Specifies the billing related details of a Azure Spot virtual machine. Minimum api-version: 2019-03-01.
  /// [capacityReservation] Specifies information about the capacity reservation that is used to allocate virtual machine. Minimum api-version: 2021-04-01.
  /// [diagnosticsProfile] Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  /// [evictionPolicy] Specifies the eviction policy for the Azure Spot virtual machine and Azure Spot scale set. For Azure Spot virtual machines, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2019-03-01. For Azure Spot scale sets, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2017-10-30-preview.
  /// [extendedLocation] The extended location of the Virtual Machine.
  /// [extensionsTimeBudget] Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum api-version: 2020-06-01.
  /// [hardwareProfile] Specifies the hardware settings for the virtual machine.
  /// [host] Specifies information about the dedicated host that the virtual machine resides in. Minimum api-version: 2018-10-01.
  /// [hostGroup] Specifies information about the dedicated host group that the virtual machine resides in. **Note:** User cannot specify both host and hostGroup properties. Minimum api-version: 2020-06-01.
  /// [identity] The identity of the virtual machine, if configured.
  /// [licenseType] Specifies that the image or disk that is being used was licensed on-premises. <br><br> Possible values for Windows Server operating system are: <br><br> Windows_Client <br><br> Windows_Server <br><br> Possible values for Linux Server operating system are: <br><br> RHEL_BYOS (for RHEL) <br><br> SLES_BYOS (for SUSE) <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) <br><br> [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) <br><br> Minimum api-version: 2015-06-15
  /// [location] The geo-location where the resource lives
  /// [networkProfile] Specifies the network interfaces of the virtual machine.
  /// [osProfile] Specifies the operating system settings used while creating the virtual machine. Some of the settings cannot be changed once VM is provisioned.
  /// [placement] Placement section specifies the user-defined constraints for virtual machine hardware placement. This property cannot be changed once VM is provisioned. Minimum api-version: 2024-11-01.
  /// [plan] Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started ->**. Enter any required information and then click **Save**.
  /// [platformFaultDomain] Specifies the scale set logical fault domain into which the Virtual Machine will be created. By default, the Virtual Machine will by automatically assigned to a fault domain that best maintains balance across available fault domains. This is applicable only if the 'virtualMachineScaleSet' property of this Virtual Machine is set. The Virtual Machine Scale Set that is referenced, must have 'platformFaultDomainCount' greater than 1. This property cannot be updated once the Virtual Machine is created. Fault domain assignment can be viewed in the Virtual Machine Instance View. Minimum api‐version: 2020‐12‐01.
  /// [priority] Specifies the priority for the virtual machine. Minimum api-version: 2019-03-01
  /// [proximityPlacementGroup] Specifies information about the proximity placement group that the virtual machine should be assigned to. Minimum api-version: 2018-04-01.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduledEventsPolicy] Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the virtual machine.
  /// [scheduledEventsProfile] Specifies Scheduled Event related configurations.
  /// [securityProfile] Specifies the Security related profile settings for the virtual machine.
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [tags] Resource tags.
  /// [userData] UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01.
  /// [virtualMachineScaleSet] Specifies information about the virtual machine scale set that the virtual machine should be assigned to. Virtual machines specified in the same virtual machine scale set are allocated to different nodes to maximize availability. Currently, a VM can only be added to virtual machine scale set at creation time. An existing VM cannot be added to a virtual machine scale set. This property cannot exist along with a non-null properties.availabilitySet reference. Minimum api‐version: 2019‐03‐01.
  /// [vmName] The name of the virtual machine.
  /// [zones] The availability zones.
  VirtualMachineArgs({
    pulumi.Output<AdditionalCapabilities>? additionalCapabilities,
    pulumi.Output<ApplicationProfile>? applicationProfile,
    pulumi.Output<SubResource>? availabilitySet,
    pulumi.Output<BillingProfile>? billingProfile,
    pulumi.Output<CapacityReservationProfile>? capacityReservation,
    pulumi.Output<DiagnosticsProfile>? diagnosticsProfile,
    pulumi.Output<String>? evictionPolicy,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? extensionsTimeBudget,
    pulumi.Output<HardwareProfile>? hardwareProfile,
    pulumi.Output<SubResource>? host,
    pulumi.Output<SubResource>? hostGroup,
    pulumi.Output<VirtualMachineIdentity>? identity,
    pulumi.Output<String>? licenseType,
    pulumi.Output<String>? location,
    pulumi.Output<NetworkProfile>? networkProfile,
    pulumi.Output<OSProfile>? osProfile,
    pulumi.Output<Placement>? placement,
    pulumi.Output<Plan>? plan,
    pulumi.Output<int>? platformFaultDomain,
    pulumi.Output<String>? priority,
    pulumi.Output<SubResource>? proximityPlacementGroup,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ScheduledEventsPolicy>? scheduledEventsPolicy,
    pulumi.Output<ScheduledEventsProfile>? scheduledEventsProfile,
    pulumi.Output<SecurityProfile>? securityProfile,
    pulumi.Output<StorageProfile>? storageProfile,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? userData,
    pulumi.Output<SubResource>? virtualMachineScaleSet,
    pulumi.Output<String>? vmName,
    pulumi.Output<List<String>>? zones,
  }) :
      additionalCapabilities = pulumi.Input.asOptionalInput<AdditionalCapabilities>(additionalCapabilities),
      applicationProfile = pulumi.Input.asOptionalInput<ApplicationProfile>(applicationProfile),
      availabilitySet = pulumi.Input.asOptionalInput<SubResource>(availabilitySet),
      billingProfile = pulumi.Input.asOptionalInput<BillingProfile>(billingProfile),
      capacityReservation = pulumi.Input.asOptionalInput<CapacityReservationProfile>(capacityReservation),
      diagnosticsProfile = pulumi.Input.asOptionalInput<DiagnosticsProfile>(diagnosticsProfile),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      extensionsTimeBudget = pulumi.Input.asOptionalInput<String>(extensionsTimeBudget),
      hardwareProfile = pulumi.Input.asOptionalInput<HardwareProfile>(hardwareProfile),
      host = pulumi.Input.asOptionalInput<SubResource>(host),
      hostGroup = pulumi.Input.asOptionalInput<SubResource>(hostGroup),
      identity = pulumi.Input.asOptionalInput<VirtualMachineIdentity>(identity),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkProfile = pulumi.Input.asOptionalInput<NetworkProfile>(networkProfile),
      osProfile = pulumi.Input.asOptionalInput<OSProfile>(osProfile),
      placement = pulumi.Input.asOptionalInput<Placement>(placement),
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      platformFaultDomain = pulumi.Input.asOptionalInput<int>(platformFaultDomain),
      priority = pulumi.Input.asOptionalInput<String>(priority),
      proximityPlacementGroup = pulumi.Input.asOptionalInput<SubResource>(proximityPlacementGroup),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scheduledEventsPolicy = pulumi.Input.asOptionalInput<ScheduledEventsPolicy>(scheduledEventsPolicy),
      scheduledEventsProfile = pulumi.Input.asOptionalInput<ScheduledEventsProfile>(scheduledEventsProfile),
      securityProfile = pulumi.Input.asOptionalInput<SecurityProfile>(securityProfile),
      storageProfile = pulumi.Input.asOptionalInput<StorageProfile>(storageProfile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      virtualMachineScaleSet = pulumi.Input.asOptionalInput<SubResource>(virtualMachineScaleSet),
      vmName = pulumi.Input.asOptionalInput<String>(vmName),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<AdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'applicationProfile': ?pulumi.Input.mapOptionalInputValue<ApplicationProfile, Map<String, dynamic>>(applicationProfile, (value) => value.toMap()),
      'availabilitySet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(availabilitySet, (value) => value.toMap()),
      'billingProfile': ?pulumi.Input.mapOptionalInputValue<BillingProfile, Map<String, dynamic>>(billingProfile, (value) => value.toMap()),
      'capacityReservation': ?pulumi.Input.mapOptionalInputValue<CapacityReservationProfile, Map<String, dynamic>>(capacityReservation, (value) => value.toMap()),
      'diagnosticsProfile': ?pulumi.Input.mapOptionalInputValue<DiagnosticsProfile, Map<String, dynamic>>(diagnosticsProfile, (value) => value.toMap()),
      'evictionPolicy': ?evictionPolicy,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'extensionsTimeBudget': ?extensionsTimeBudget,
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<HardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'host': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(host, (value) => value.toMap()),
      'hostGroup': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(hostGroup, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<VirtualMachineIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': ?location,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OSProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'placement': ?pulumi.Input.mapOptionalInputValue<Placement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'platformFaultDomain': ?platformFaultDomain,
      'priority': ?priority,
      'proximityPlacementGroup': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(proximityPlacementGroup, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scheduledEventsPolicy': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsPolicy, Map<String, dynamic>>(scheduledEventsPolicy, (value) => value.toMap()),
      'scheduledEventsProfile': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsProfile, Map<String, dynamic>>(scheduledEventsProfile, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tags': ?tags,
      'userData': ?userData,
      'virtualMachineScaleSet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualMachineScaleSet, (value) => value.toMap()),
      'vmName': ?vmName,
      'zones': ?zones,
    };
  }

  factory VirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineArgs(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : pulumi.Output.create<AdditionalCapabilities>(AdditionalCapabilities.fromMap((map['additionalCapabilities'] as Map).cast<String, dynamic>())),
      applicationProfile: map['applicationProfile'] == null ? null : pulumi.Output.create<ApplicationProfile>(ApplicationProfile.fromMap((map['applicationProfile'] as Map).cast<String, dynamic>())),
      availabilitySet: map['availabilitySet'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['availabilitySet'] as Map).cast<String, dynamic>())),
      billingProfile: map['billingProfile'] == null ? null : pulumi.Output.create<BillingProfile>(BillingProfile.fromMap((map['billingProfile'] as Map).cast<String, dynamic>())),
      capacityReservation: map['capacityReservation'] == null ? null : pulumi.Output.create<CapacityReservationProfile>(CapacityReservationProfile.fromMap((map['capacityReservation'] as Map).cast<String, dynamic>())),
      diagnosticsProfile: map['diagnosticsProfile'] == null ? null : pulumi.Output.create<DiagnosticsProfile>(DiagnosticsProfile.fromMap((map['diagnosticsProfile'] as Map).cast<String, dynamic>())),
      evictionPolicy: map['evictionPolicy'] == null ? null : pulumi.Output.create<String>(map['evictionPolicy'] as String),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      extensionsTimeBudget: map['extensionsTimeBudget'] == null ? null : pulumi.Output.create<String>(map['extensionsTimeBudget'] as String),
      hardwareProfile: map['hardwareProfile'] == null ? null : pulumi.Output.create<HardwareProfile>(HardwareProfile.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>())),
      host: map['host'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['host'] as Map).cast<String, dynamic>())),
      hostGroup: map['hostGroup'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['hostGroup'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<VirtualMachineIdentity>(VirtualMachineIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      licenseType: map['licenseType'] == null ? null : pulumi.Output.create<String>(map['licenseType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkProfile: map['networkProfile'] == null ? null : pulumi.Output.create<NetworkProfile>(NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      osProfile: map['osProfile'] == null ? null : pulumi.Output.create<OSProfile>(OSProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())),
      placement: map['placement'] == null ? null : pulumi.Output.create<Placement>(Placement.fromMap((map['placement'] as Map).cast<String, dynamic>())),
      plan: map['plan'] == null ? null : pulumi.Output.create<Plan>(Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      platformFaultDomain: map['platformFaultDomain'] == null ? null : pulumi.Output.create<int>(map['platformFaultDomain'] as int),
      priority: map['priority'] == null ? null : pulumi.Output.create<String>(map['priority'] as String),
      proximityPlacementGroup: map['proximityPlacementGroup'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['proximityPlacementGroup'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scheduledEventsPolicy: map['scheduledEventsPolicy'] == null ? null : pulumi.Output.create<ScheduledEventsPolicy>(ScheduledEventsPolicy.fromMap((map['scheduledEventsPolicy'] as Map).cast<String, dynamic>())),
      scheduledEventsProfile: map['scheduledEventsProfile'] == null ? null : pulumi.Output.create<ScheduledEventsProfile>(ScheduledEventsProfile.fromMap((map['scheduledEventsProfile'] as Map).cast<String, dynamic>())),
      securityProfile: map['securityProfile'] == null ? null : pulumi.Output.create<SecurityProfile>(SecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())),
      storageProfile: map['storageProfile'] == null ? null : pulumi.Output.create<StorageProfile>(StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      virtualMachineScaleSet: map['virtualMachineScaleSet'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['virtualMachineScaleSet'] as Map).cast<String, dynamic>())),
      vmName: map['vmName'] == null ? null : pulumi.Output.create<String>(map['vmName'] as String),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

