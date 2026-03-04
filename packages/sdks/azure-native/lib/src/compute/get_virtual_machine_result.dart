// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_capabilities_response.dart';
import 'application_profile_response.dart';
import 'billing_profile_response.dart';
import 'capacity_reservation_profile_response.dart';
import 'diagnostics_profile_response.dart';
import 'extended_location_response.dart';
import 'hardware_profile_response.dart';
import 'network_profile_response.dart';
import 'osprofile_response.dart';
import 'placement_response.dart';
import 'plan_response.dart';
import 'scheduled_events_policy_response.dart';
import 'scheduled_events_profile_response.dart';
import 'security_profile_response.dart';
import 'storage_profile_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_extension_response.dart';
import 'virtual_machine_identity_response.dart';
import 'virtual_machine_instance_view_response.dart';

/// Result data returned by getVirtualMachine.
class GetVirtualMachineResult {
  /// Specifies additional capabilities enabled or disabled on the virtual machine.
  final AdditionalCapabilitiesResponse? additionalCapabilities;

  /// Specifies the gallery applications that should be made available to the VM/VMSS.
  final ApplicationProfileResponse? applicationProfile;

  /// Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to availability set at creation time. The availability set to which the VM is being added should be under the same resource group as the availability set resource. An existing VM cannot be added to an availability set. This property cannot exist along with a non-null properties.virtualMachineScaleSet reference.
  final SubResourceResponse? availabilitySet;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Specifies the billing related details of a Azure Spot virtual machine. Minimum api-version: 2019-03-01.
  final BillingProfileResponse? billingProfile;

  /// Specifies information about the capacity reservation that is used to allocate virtual machine. Minimum api-version: 2021-04-01.
  final CapacityReservationProfileResponse? capacityReservation;

  /// Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  final DiagnosticsProfileResponse? diagnosticsProfile;

  /// Etag is property returned in Create/Update/Get response of the VM, so that customer can supply it in the header to ensure optimistic updates.
  final String etag;

  /// Specifies the eviction policy for the Azure Spot virtual machine and Azure Spot scale set. For Azure Spot virtual machines, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2019-03-01. For Azure Spot scale sets, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2017-10-30-preview.
  final String? evictionPolicy;

  /// The extended location of the Virtual Machine.
  final ExtendedLocationResponse? extendedLocation;

  /// Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum api-version: 2020-06-01.
  final String? extensionsTimeBudget;

  /// Specifies the hardware settings for the virtual machine.
  final HardwareProfileResponse? hardwareProfile;

  /// Specifies information about the dedicated host that the virtual machine resides in. Minimum api-version: 2018-10-01.
  final SubResourceResponse? host;

  /// Specifies information about the dedicated host group that the virtual machine resides in. **Note:** User cannot specify both host and hostGroup properties. Minimum api-version: 2020-06-01.
  final SubResourceResponse? hostGroup;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The identity of the virtual machine, if configured.
  final VirtualMachineIdentityResponse? identity;

  /// The virtual machine instance view.
  final VirtualMachineInstanceViewResponse instanceView;

  /// Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  final String? licenseType;

  /// The geo-location where the resource lives
  final String location;

  /// ManagedBy is set to Virtual Machine Scale Set(VMSS) flex ARM resourceID, if the VM is part of the VMSS. This property is used by platform for internal resource group delete optimization.
  final String managedBy;

  /// The name of the resource
  final String name;

  /// Specifies the network interfaces of the virtual machine.
  final NetworkProfileResponse? networkProfile;

  /// Specifies the operating system settings used while creating the virtual machine. Some of the settings cannot be changed once VM is provisioned.
  final OSProfileResponse? osProfile;

  /// Placement section specifies the user-defined constraints for virtual machine hardware placement. This property cannot be changed once VM is provisioned. Minimum api-version: 2024-11-01.
  final PlacementResponse? placement;

  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  final PlanResponse? plan;

  /// Specifies the scale set logical fault domain into which the Virtual Machine will be created. By default, the Virtual Machine will by automatically assigned to a fault domain that best maintains balance across available fault domains. This is applicable only if the 'virtualMachineScaleSet' property of this Virtual Machine is set. The Virtual Machine Scale Set that is referenced, must have 'platformFaultDomainCount' greater than 1. This property cannot be updated once the Virtual Machine is created. Fault domain assignment can be viewed in the Virtual Machine Instance View. Minimum api‐version: 2020‐12‐01.
  final int? platformFaultDomain;

  /// Specifies the priority for the virtual machine. Minimum api-version: 2019-03-01
  final String? priority;

  /// The provisioning state, which only appears in the response.
  final String provisioningState;

  /// Specifies information about the proximity placement group that the virtual machine should be assigned to. Minimum api-version: 2018-04-01.
  final SubResourceResponse? proximityPlacementGroup;

  /// The virtual machine child extension resources.
  final List<VirtualMachineExtensionResponse> resources;

  /// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the virtual machine.
  final ScheduledEventsPolicyResponse? scheduledEventsPolicy;

  /// Specifies Scheduled Event related configurations.
  final ScheduledEventsProfileResponse? scheduledEventsProfile;

  /// Specifies the Security related profile settings for the virtual machine.
  final SecurityProfileResponse? securityProfile;

  /// Specifies the storage settings for the virtual machine disks.
  final StorageProfileResponse? storageProfile;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Specifies the time at which the Virtual Machine resource was created. Minimum api-version: 2021-11-01.
  final String timeCreated;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01.
  final String? userData;

  /// Specifies information about the virtual machine scale set that the virtual machine should be assigned to. Virtual machines specified in the same virtual machine scale set are allocated to different nodes to maximize availability. Currently, a VM can only be added to virtual machine scale set at creation time. An existing VM cannot be added to a virtual machine scale set. This property cannot exist along with a non-null properties.availabilitySet reference. Minimum api‐version: 2019‐03‐01.
  final SubResourceResponse? virtualMachineScaleSet;

  /// Specifies the VM unique ID which is a 128-bits identifier that is encoded and stored in all Azure IaaS VMs SMBIOS and can be read using platform BIOS commands.
  final String vmId;

  /// The availability zones.
  final List<String>? zones;

  /// Creates a new [GetVirtualMachineResult].
  /// [additionalCapabilities] Specifies additional capabilities enabled or disabled on the virtual machine.
  /// [applicationProfile] Specifies the gallery applications that should be made available to the VM/VMSS.
  /// [availabilitySet] Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to availability set at creation time. The availability set to which the VM is being added should be under the same resource group as the availability set resource. An existing VM cannot be added to an availability set. This property cannot exist along with a non-null properties.virtualMachineScaleSet reference.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingProfile] Specifies the billing related details of a Azure Spot virtual machine. Minimum api-version: 2019-03-01.
  /// [capacityReservation] Specifies information about the capacity reservation that is used to allocate virtual machine. Minimum api-version: 2021-04-01.
  /// [diagnosticsProfile] Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  /// [etag] Etag is property returned in Create/Update/Get response of the VM, so that customer can supply it in the header to ensure optimistic updates.
  /// [evictionPolicy] Specifies the eviction policy for the Azure Spot virtual machine and Azure Spot scale set. For Azure Spot virtual machines, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2019-03-01. For Azure Spot scale sets, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2017-10-30-preview.
  /// [extendedLocation] The extended location of the Virtual Machine.
  /// [extensionsTimeBudget] Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum api-version: 2020-06-01.
  /// [hardwareProfile] Specifies the hardware settings for the virtual machine.
  /// [host] Specifies information about the dedicated host that the virtual machine resides in. Minimum api-version: 2018-10-01.
  /// [hostGroup] Specifies information about the dedicated host group that the virtual machine resides in. **Note:** User cannot specify both host and hostGroup properties. Minimum api-version: 2020-06-01.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the virtual machine, if configured.
  /// [instanceView] The virtual machine instance view.
  /// [licenseType] Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  /// [location] The geo-location where the resource lives
  /// [managedBy] ManagedBy is set to Virtual Machine Scale Set(VMSS) flex ARM resourceID, if the VM is part of the VMSS. This property is used by platform for internal resource group delete optimization.
  /// [name] The name of the resource
  /// [networkProfile] Specifies the network interfaces of the virtual machine.
  /// [osProfile] Specifies the operating system settings used while creating the virtual machine. Some of the settings cannot be changed once VM is provisioned.
  /// [placement] Placement section specifies the user-defined constraints for virtual machine hardware placement. This property cannot be changed once VM is provisioned. Minimum api-version: 2024-11-01.
  /// [plan] Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  /// [platformFaultDomain] Specifies the scale set logical fault domain into which the Virtual Machine will be created. By default, the Virtual Machine will by automatically assigned to a fault domain that best maintains balance across available fault domains. This is applicable only if the 'virtualMachineScaleSet' property of this Virtual Machine is set. The Virtual Machine Scale Set that is referenced, must have 'platformFaultDomainCount' greater than 1. This property cannot be updated once the Virtual Machine is created. Fault domain assignment can be viewed in the Virtual Machine Instance View. Minimum api‐version: 2020‐12‐01.
  /// [priority] Specifies the priority for the virtual machine. Minimum api-version: 2019-03-01
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [proximityPlacementGroup] Specifies information about the proximity placement group that the virtual machine should be assigned to. Minimum api-version: 2018-04-01.
  /// [resources] The virtual machine child extension resources.
  /// [scheduledEventsPolicy] Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the virtual machine.
  /// [scheduledEventsProfile] Specifies Scheduled Event related configurations.
  /// [securityProfile] Specifies the Security related profile settings for the virtual machine.
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeCreated] Specifies the time at which the Virtual Machine resource was created. Minimum api-version: 2021-11-01.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userData] UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01.
  /// [virtualMachineScaleSet] Specifies information about the virtual machine scale set that the virtual machine should be assigned to. Virtual machines specified in the same virtual machine scale set are allocated to different nodes to maximize availability. Currently, a VM can only be added to virtual machine scale set at creation time. An existing VM cannot be added to a virtual machine scale set. This property cannot exist along with a non-null properties.availabilitySet reference. Minimum api‐version: 2019‐03‐01.
  /// [vmId] Specifies the VM unique ID which is a 128-bits identifier that is encoded and stored in all Azure IaaS VMs SMBIOS and can be read using platform BIOS commands.
  /// [zones] The availability zones.
  GetVirtualMachineResult({
    this.additionalCapabilities,
    this.applicationProfile,
    this.availabilitySet,
    required this.azureApiVersion,
    this.billingProfile,
    this.capacityReservation,
    this.diagnosticsProfile,
    required this.etag,
    this.evictionPolicy,
    this.extendedLocation,
    this.extensionsTimeBudget,
    this.hardwareProfile,
    this.host,
    this.hostGroup,
    required this.id,
    this.identity,
    required this.instanceView,
    this.licenseType,
    required this.location,
    required this.managedBy,
    required this.name,
    this.networkProfile,
    this.osProfile,
    this.placement,
    this.plan,
    this.platformFaultDomain,
    this.priority,
    required this.provisioningState,
    this.proximityPlacementGroup,
    required this.resources,
    this.scheduledEventsPolicy,
    this.scheduledEventsProfile,
    this.securityProfile,
    this.storageProfile,
    required this.systemData,
    this.tags,
    required this.timeCreated,
    required this.type,
    this.userData,
    this.virtualMachineScaleSet,
    required this.vmId,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?additionalCapabilities?.toMap(),
      'applicationProfile': ?applicationProfile?.toMap(),
      'availabilitySet': ?availabilitySet?.toMap(),
      'azureApiVersion': azureApiVersion,
      'billingProfile': ?billingProfile?.toMap(),
      'capacityReservation': ?capacityReservation?.toMap(),
      'diagnosticsProfile': ?diagnosticsProfile?.toMap(),
      'etag': etag,
      'evictionPolicy': ?evictionPolicy,
      'extendedLocation': ?extendedLocation?.toMap(),
      'extensionsTimeBudget': ?extensionsTimeBudget,
      'hardwareProfile': ?hardwareProfile?.toMap(),
      'host': ?host?.toMap(),
      'hostGroup': ?hostGroup?.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'instanceView': instanceView.toMap(),
      'licenseType': ?licenseType,
      'location': location,
      'managedBy': managedBy,
      'name': name,
      'networkProfile': ?networkProfile?.toMap(),
      'osProfile': ?osProfile?.toMap(),
      'placement': ?placement?.toMap(),
      'plan': ?plan?.toMap(),
      'platformFaultDomain': ?platformFaultDomain,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'proximityPlacementGroup': ?proximityPlacementGroup?.toMap(),
      'resources':
          pulumi.Input.encodeList<
            VirtualMachineExtensionResponse,
            Map<String, dynamic>
          >(resources, (value) => value.toMap()),
      'scheduledEventsPolicy': ?scheduledEventsPolicy?.toMap(),
      'scheduledEventsProfile': ?scheduledEventsProfile?.toMap(),
      'securityProfile': ?securityProfile?.toMap(),
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeCreated': timeCreated,
      'type': type,
      'userData': ?userData,
      'virtualMachineScaleSet': ?virtualMachineScaleSet?.toMap(),
      'vmId': vmId,
      'zones': ?zones,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      additionalCapabilities: (() {
        final guardedValue = map['additionalCapabilities'];
        if (guardedValue == null) return null;
        return AdditionalCapabilitiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      applicationProfile: (() {
        final guardedValue = map['applicationProfile'];
        if (guardedValue == null) return null;
        return ApplicationProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      availabilitySet: (() {
        final guardedValue = map['availabilitySet'];
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      billingProfile: (() {
        final guardedValue = map['billingProfile'];
        if (guardedValue == null) return null;
        return BillingProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      capacityReservation: (() {
        final guardedValue = map['capacityReservation'];
        if (guardedValue == null) return null;
        return CapacityReservationProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      diagnosticsProfile: (() {
        final guardedValue = map['diagnosticsProfile'];
        if (guardedValue == null) return null;
        return DiagnosticsProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      etag: map['etag'] as String,
      evictionPolicy: (() {
        final guardedValue = map['evictionPolicy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      extensionsTimeBudget: (() {
        final guardedValue = map['extensionsTimeBudget'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      hardwareProfile: (() {
        final guardedValue = map['hardwareProfile'];
        if (guardedValue == null) return null;
        return HardwareProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      hostGroup: (() {
        final guardedValue = map['hostGroup'];
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return VirtualMachineIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      instanceView: VirtualMachineInstanceViewResponse.fromMap(
        (map['instanceView']! as Map).cast<String, dynamic>(),
      ),
      licenseType: (() {
        final guardedValue = map['licenseType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: map['location'] as String,
      managedBy: map['managedBy'] as String,
      name: map['name'] as String,
      networkProfile: (() {
        final guardedValue = map['networkProfile'];
        if (guardedValue == null) return null;
        return NetworkProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      osProfile: (() {
        final guardedValue = map['osProfile'];
        if (guardedValue == null) return null;
        return OSProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      placement: (() {
        final guardedValue = map['placement'];
        if (guardedValue == null) return null;
        return PlacementResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      plan: (() {
        final guardedValue = map['plan'];
        if (guardedValue == null) return null;
        return PlanResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      platformFaultDomain: (() {
        final guardedValue = map['platformFaultDomain'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      proximityPlacementGroup: (() {
        final guardedValue = map['proximityPlacementGroup'];
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      resources: pulumi.Input.decodeList<VirtualMachineExtensionResponse>(
        map['resources']!,
        (value) => VirtualMachineExtensionResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      scheduledEventsPolicy: (() {
        final guardedValue = map['scheduledEventsPolicy'];
        if (guardedValue == null) return null;
        return ScheduledEventsPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      scheduledEventsProfile: (() {
        final guardedValue = map['scheduledEventsProfile'];
        if (guardedValue == null) return null;
        return ScheduledEventsProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      securityProfile: (() {
        final guardedValue = map['securityProfile'];
        if (guardedValue == null) return null;
        return SecurityProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      storageProfile: (() {
        final guardedValue = map['storageProfile'];
        if (guardedValue == null) return null;
        return StorageProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      timeCreated: map['timeCreated'] as String,
      type: map['type'] as String,
      userData: (() {
        final guardedValue = map['userData'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      virtualMachineScaleSet: (() {
        final guardedValue = map['virtualMachineScaleSet'];
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      vmId: map['vmId'] as String,
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
    );
  }
}
