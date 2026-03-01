// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_scale_set_additional_capabilities.dart';
import 'windows_virtual_machine_scale_set_additional_unattend_content.dart';
import 'windows_virtual_machine_scale_set_automatic_instance_repair.dart';
import 'windows_virtual_machine_scale_set_automatic_os_upgrade_policy.dart';
import 'windows_virtual_machine_scale_set_boot_diagnostics.dart';
import 'windows_virtual_machine_scale_set_data_disk.dart';
import 'windows_virtual_machine_scale_set_extension.dart';
import 'windows_virtual_machine_scale_set_gallery_application.dart';
import 'windows_virtual_machine_scale_set_identity.dart';
import 'windows_virtual_machine_scale_set_network_interface.dart';
import 'windows_virtual_machine_scale_set_os_disk.dart';
import 'windows_virtual_machine_scale_set_plan.dart';
import 'windows_virtual_machine_scale_set_rolling_upgrade_policy.dart';
import 'windows_virtual_machine_scale_set_scale_in.dart';
import 'windows_virtual_machine_scale_set_secret.dart';
import 'windows_virtual_machine_scale_set_source_image_reference.dart';
import 'windows_virtual_machine_scale_set_spot_restore.dart';
import 'windows_virtual_machine_scale_set_termination_notification.dart';
import 'windows_virtual_machine_scale_set_winrm_listener.dart';

/// {@template pulumi_compute_windows_virtual_machine_scale_set_windows_virtual_machine_scale_set_args_doc}
/// The set of arguments for WindowsVirtualMachineScaleSet.
/// {@endtemplate}
/// {@macro pulumi_compute_windows_virtual_machine_scale_set_windows_virtual_machine_scale_set_args_doc}
class WindowsVirtualMachineScaleSetArgs {
  /// An `additional_capabilities` block as defined below.
  final pulumi.Input<WindowsVirtualMachineScaleSetAdditionalCapabilities>? additionalCapabilities;
  /// One or more `additional_unattend_content` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<WindowsVirtualMachineScaleSetAdditionalUnattendContent>>? additionalUnattendContents;
  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> adminPassword;
  /// The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> adminUsername;
  /// An `automatic_instance_repair` block as defined below. To enable the automatic instance repair, this Virtual Machine Scale Set must have a valid `health_probe_id` or an [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension).
  ///
  /// > **Note:** For more information about Automatic Instance Repair, please refer to [this doc](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-automatic-instance-repairs).
  final pulumi.Input<WindowsVirtualMachineScaleSetAutomaticInstanceRepair>? automaticInstanceRepair;
  /// An `automatic_os_upgrade_policy` block as defined below. This can only be specified when `upgrade_mode` is set to either `Automatic` or `Rolling`.
  final pulumi.Input<WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy>? automaticOsUpgradePolicy;
  /// A `boot_diagnostics` block as defined below.
  final pulumi.Input<WindowsVirtualMachineScaleSetBootDiagnostics>? bootDiagnostics;
  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `capacity_reservation_group_id` cannot be used with `proximity_placement_group_id`
  ///
  /// > **Note:** `single_placement_group` must be set to `false` when `capacity_reservation_group_id` is specified.
  final pulumi.Input<String>? capacityReservationGroupId;
  /// The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name_prefix`, then you must specify `computer_name_prefix`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? computerNamePrefix;
  /// The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set.
  ///
  /// > **Note:** When Custom Data has been configured, it's not possible to remove it without tainting the Virtual Machine Scale Set, due to a limitation of the Azure API.
  final pulumi.Input<String>? customData;
  /// One or more `data_disk` blocks as defined below.
  final pulumi.Input<List<WindowsVirtualMachineScaleSetDataDisk>>? dataDisks;
  /// Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? Defaults to `false`.
  final pulumi.Input<bool>? doNotRunExtensionsOnOverprovisionedMachines;
  /// Specifies the Edge Zone within the Azure Region where this Windows Virtual Machine Scale Set should exist. Changing this forces a new Windows Virtual Machine Scale Set to be created.
  final pulumi.Input<String>? edgeZone;
  /// Are automatic updates enabled for this Virtual Machine? Defaults to `true`.
  final pulumi.Input<bool>? enableAutomaticUpdates;
  /// Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  final pulumi.Input<bool>? encryptionAtHostEnabled;
  /// Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<String>? evictionPolicy;
  /// Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Windows Virtual Machine Scale Set to be created.
  ///
  /// > **Note:** `extension_operations_enabled` may only be set to `false` if there are no extensions defined in the `extension` field.
  final pulumi.Input<bool>? extensionOperationsEnabled;
  /// One or more `extension` blocks as defined below
  final pulumi.Input<List<WindowsVirtualMachineScaleSetExtension>>? extensions;
  /// Specifies the duration allocated for all extensions to start. The time duration should be between `15` minutes and `120` minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  final pulumi.Input<String>? extensionsTimeBudget;
  /// One or more `gallery_application` blocks as defined below.
  final pulumi.Input<List<WindowsVirtualMachineScaleSetGalleryApplication>>? galleryApplications;
  /// The ID of a Load Balancer Probe which should be used to determine the health of an instance. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`.
  final pulumi.Input<String>? healthProbeId;
  /// Specifies the ID of the dedicated host group that the virtual machine scale set resides in. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostGroupId;
  /// An `identity` block as defined below.
  final pulumi.Input<WindowsVirtualMachineScaleSetIdentity>? identity;
  /// The number of Virtual Machines in the Scale Set.
  ///
  /// > **NOTE:** If you're using AutoScaling, you may wish to use [`Ignore Changes` functionality](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to ignore changes to this field.
  final pulumi.Input<int> instances;
  /// Specifies the type of on-premise license (also known as [Azure Hybrid Use Benefit](https://docs.microsoft.com/en-gb/windows-server/get-started/azure-hybrid-benefit)) which should be used for this Virtual Machine Scale Set. Possible values are `None`, `Windows_Client` and `Windows_Server`.
  final pulumi.Input<String>? licenseType;
  /// The Azure location where the Windows Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the `eviction_policy`. Defaults to `-1`, which means that each Virtual Machine in the Scale Set should not be evicted for price reasons.
  ///
  /// > **Note:** This can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<double>? maxBidPrice;
  /// The name of the Windows Virtual Machine Scale Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `network_interface` blocks as defined below.
  final pulumi.Input<List<WindowsVirtualMachineScaleSetNetworkInterface>> networkInterfaces;
  /// An `os_disk` block as defined below.
  final pulumi.Input<WindowsVirtualMachineScaleSetOsDisk> osDisk;
  /// Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to `true`.
  final pulumi.Input<bool>? overprovision;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When using an image from Azure Marketplace a `plan` must be specified.
  final pulumi.Input<WindowsVirtualMachineScaleSetPlan>? plan;
  /// Specifies the number of fault domains that are used by this Linux Virtual Machine Scale Set. Changing this forces a new resource to be created.
  final pulumi.Input<int>? platformFaultDomainCount;
  /// The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource.
  ///
  /// > **Note:** When `priority` is set to `Spot` an `eviction_policy` must be specified.
  final pulumi.Input<String>? priority;
  /// Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created.
  final pulumi.Input<bool>? provisionVmAgent;
  /// The ID of the Proximity Placement Group in which the Virtual Machine Scale Set should be assigned to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// Should resilient VM creation be enabled? When enabled, the service will attempt to create VMs in alternative fault domains or zones if the primary location fails during creation. Defaults to `false`.
  ///
  /// > **Note:** `resilient_vm_creation_enabled` is currently not supported in the `austriaeast`, `belgiumcentral`, `centraluseuap`, `chilecentral`, `indonesiacentral`, `israelnorthwest`, `malaysiawest`, `mexicocentral`, `newzealandnorth`, `southcentralus2`, `southindia`, `southeastus3`, `southwestus`, `eastasia`, `eastus`, `southcentralus`, `southeastasia`, and `westeurope` regions.
  final pulumi.Input<bool>? resilientVmCreationEnabled;
  /// Should resilient VM deletion be enabled? When enabled, the service will use a more resilient deletion process that attempts to gracefully handle failures during VM termination. Defaults to `false`.
  ///
  /// > **Note:** `resilient_vm_deletion_enabled` is currently not supported in the `austriaeast`, `belgiumcentral`, `centraluseuap`, `chilecentral`, `indonesiacentral`, `israelnorthwest`, `malaysiawest`, `mexicocentral`, `newzealandnorth`, `southcentralus2`, `southindia`, `southeastus3`, `southwestus`, `eastasia`, `eastus`, `southcentralus`, `southeastasia`, and `westeurope` regions.
  final pulumi.Input<bool>? resilientVmDeletionEnabled;
  /// The name of the Resource Group in which the Windows Virtual Machine Scale Set should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `rolling_upgrade_policy` block as defined below. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`. Changing this forces a new resource to be created.
  final pulumi.Input<WindowsVirtualMachineScaleSetRollingUpgradePolicy>? rollingUpgradePolicy;
  /// A `scale_in` block as defined below.
  final pulumi.Input<WindowsVirtualMachineScaleSetScaleIn>? scaleIn;
  /// One or more `secret` blocks as defined below.
  final pulumi.Input<List<WindowsVirtualMachineScaleSetSecret>>? secrets;
  /// Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? secureBootEnabled;
  /// Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Defaults to `true`.
  final pulumi.Input<bool>? singlePlacementGroup;
  /// The Virtual Machine SKU for the Scale Set, such as `Standard_F2`.
  final pulumi.Input<String> sku;
  /// The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`, `Shared Image ID`, `Shared Image Version ID`, `Community Gallery Image ID`, `Community Gallery Image Version ID`, `Shared Gallery Image ID` and `Shared Gallery Image Version ID`.
  ///
  /// > **Note:** One of either `source_image_id` or `source_image_reference` must be set.
  final pulumi.Input<String>? sourceImageId;
  /// A `source_image_reference` block as defined below.
  ///
  /// > **Note:** One of either `source_image_id` or `source_image_reference` must be set.
  final pulumi.Input<WindowsVirtualMachineScaleSetSourceImageReference>? sourceImageReference;
  /// A `spot_restore` block as defined below.
  final pulumi.Input<WindowsVirtualMachineScaleSetSpotRestore>? spotRestore;
  /// A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `termination_notification` block as defined below.
  final pulumi.Input<WindowsVirtualMachineScaleSetTerminationNotification>? terminationNotification;
  /// Specifies the time zone of the virtual machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  final pulumi.Input<String>? timezone;
  /// Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual` and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If rolling upgrades are configured and running on a Linux Virtual Machine Scale Set, they will be cancelled when Terraform tries to destroy the resource.
  final pulumi.Input<String>? upgradeMode;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  final pulumi.Input<String>? userData;
  /// Specifies if vTPM (Virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? vtpmEnabled;
  /// One or more `winrm_listener` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<WindowsVirtualMachineScaleSetWinrmListener>>? winrmListeners;
  /// Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This can only be set to `true` when one or more `zones` are configured.
  final pulumi.Input<bool>? zoneBalance;
  /// Specifies a list of Availability Zones in which this Windows Virtual Machine Scale Set should be located.
  ///
  /// > **Note:** Updating `zones` to remove an existing zone forces a new Virtual Machine Scale Set to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [WindowsVirtualMachineScaleSetArgs].
  /// [additionalCapabilities] An `additional_capabilities` block as defined below.
  /// [additionalUnattendContents] One or more `additional_unattend_content` blocks as defined below. Changing this forces a new resource to be created.
  /// [adminPassword] The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  /// [adminUsername] The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
  /// [automaticInstanceRepair] An `automatic_instance_repair` block as defined below. To enable the automatic instance repair, this Virtual Machine Scale Set must have a valid `health_probe_id` or an [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension).
  /// [automaticOsUpgradePolicy] An `automatic_os_upgrade_policy` block as defined below. This can only be specified when `upgrade_mode` is set to either `Automatic` or `Rolling`.
  /// [bootDiagnostics] A `boot_diagnostics` block as defined below.
  /// [capacityReservationGroupId] Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created.
  /// [computerNamePrefix] The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name_prefix`, then you must specify `computer_name_prefix`. Changing this forces a new resource to be created.
  /// [customData] The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set.
  /// [dataDisks] One or more `data_disk` blocks as defined below.
  /// [doNotRunExtensionsOnOverprovisionedMachines] Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? Defaults to `false`.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Windows Virtual Machine Scale Set should exist. Changing this forces a new Windows Virtual Machine Scale Set to be created.
  /// [enableAutomaticUpdates] Are automatic updates enabled for this Virtual Machine? Defaults to `true`.
  /// [encryptionAtHostEnabled] Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  /// [evictionPolicy] Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  /// [extensionOperationsEnabled] Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Windows Virtual Machine Scale Set to be created.
  /// [extensions] One or more `extension` blocks as defined below
  /// [extensionsTimeBudget] Specifies the duration allocated for all extensions to start. The time duration should be between `15` minutes and `120` minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  /// [galleryApplications] One or more `gallery_application` blocks as defined below.
  /// [healthProbeId] The ID of a Load Balancer Probe which should be used to determine the health of an instance. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`.
  /// [hostGroupId] Specifies the ID of the dedicated host group that the virtual machine scale set resides in. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [instances] The number of Virtual Machines in the Scale Set.
  /// [licenseType] Specifies the type of on-premise license (also known as [Azure Hybrid Use Benefit](https://docs.microsoft.com/en-gb/windows-server/get-started/azure-hybrid-benefit)) which should be used for this Virtual Machine Scale Set. Possible values are `None`, `Windows_Client` and `Windows_Server`.
  /// [location] The Azure location where the Windows Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  /// [maxBidPrice] The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the `eviction_policy`. Defaults to `-1`, which means that each Virtual Machine in the Scale Set should not be evicted for price reasons.
  /// [name] The name of the Windows Virtual Machine Scale Set. Changing this forces a new resource to be created.
  /// [networkInterfaces] One or more `network_interface` blocks as defined below.
  /// [osDisk] An `os_disk` block as defined below.
  /// [overprovision] Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to `true`.
  /// [plan] A `plan` block as defined below. Changing this forces a new resource to be created.
  /// [platformFaultDomainCount] Specifies the number of fault domains that are used by this Linux Virtual Machine Scale Set. Changing this forces a new resource to be created.
  /// [priority] The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource.
  /// [provisionVmAgent] Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group in which the Virtual Machine Scale Set should be assigned to. Changing this forces a new resource to be created.
  /// [resilientVmCreationEnabled] Should resilient VM creation be enabled? When enabled, the service will attempt to create VMs in alternative fault domains or zones if the primary location fails during creation. Defaults to `false`.
  /// [resilientVmDeletionEnabled] Should resilient VM deletion be enabled? When enabled, the service will use a more resilient deletion process that attempts to gracefully handle failures during VM termination. Defaults to `false`.
  /// [resourceGroupName] The name of the Resource Group in which the Windows Virtual Machine Scale Set should be exist. Changing this forces a new resource to be created.
  /// [rollingUpgradePolicy] A `rolling_upgrade_policy` block as defined below. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`. Changing this forces a new resource to be created.
  /// [scaleIn] A `scale_in` block as defined below.
  /// [secrets] One or more `secret` blocks as defined below.
  /// [secureBootEnabled] Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  /// [singlePlacementGroup] Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Defaults to `true`.
  /// [sku] The Virtual Machine SKU for the Scale Set, such as `Standard_F2`.
  /// [sourceImageId] The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`, `Shared Image ID`, `Shared Image Version ID`, `Community Gallery Image ID`, `Community Gallery Image Version ID`, `Shared Gallery Image ID` and `Shared Gallery Image Version ID`.
  /// [sourceImageReference] A `source_image_reference` block as defined below.
  /// [spotRestore] A `spot_restore` block as defined below.
  /// [tags] A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  /// [terminationNotification] A `termination_notification` block as defined below.
  /// [timezone] Specifies the time zone of the virtual machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  /// [upgradeMode] Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual` and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  /// [userData] The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  /// [vtpmEnabled] Specifies if vTPM (Virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  /// [winrmListeners] One or more `winrm_listener` blocks as defined below. Changing this forces a new resource to be created.
  /// [zoneBalance] Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  /// [zones] Specifies a list of Availability Zones in which this Windows Virtual Machine Scale Set should be located.
  WindowsVirtualMachineScaleSetArgs({
    WindowsVirtualMachineScaleSetAdditionalCapabilities? additionalCapabilities,
    List<WindowsVirtualMachineScaleSetAdditionalUnattendContent>? additionalUnattendContents,
    required String adminPassword,
    required String adminUsername,
    WindowsVirtualMachineScaleSetAutomaticInstanceRepair? automaticInstanceRepair,
    WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy? automaticOsUpgradePolicy,
    WindowsVirtualMachineScaleSetBootDiagnostics? bootDiagnostics,
    String? capacityReservationGroupId,
    String? computerNamePrefix,
    String? customData,
    List<WindowsVirtualMachineScaleSetDataDisk>? dataDisks,
    bool? doNotRunExtensionsOnOverprovisionedMachines,
    String? edgeZone,
    bool? enableAutomaticUpdates,
    bool? encryptionAtHostEnabled,
    String? evictionPolicy,
    bool? extensionOperationsEnabled,
    List<WindowsVirtualMachineScaleSetExtension>? extensions,
    String? extensionsTimeBudget,
    List<WindowsVirtualMachineScaleSetGalleryApplication>? galleryApplications,
    String? healthProbeId,
    String? hostGroupId,
    WindowsVirtualMachineScaleSetIdentity? identity,
    required int instances,
    String? licenseType,
    String? location,
    double? maxBidPrice,
    String? name,
    required List<WindowsVirtualMachineScaleSetNetworkInterface> networkInterfaces,
    required WindowsVirtualMachineScaleSetOsDisk osDisk,
    bool? overprovision,
    WindowsVirtualMachineScaleSetPlan? plan,
    int? platformFaultDomainCount,
    String? priority,
    bool? provisionVmAgent,
    String? proximityPlacementGroupId,
    bool? resilientVmCreationEnabled,
    bool? resilientVmDeletionEnabled,
    required String resourceGroupName,
    WindowsVirtualMachineScaleSetRollingUpgradePolicy? rollingUpgradePolicy,
    WindowsVirtualMachineScaleSetScaleIn? scaleIn,
    List<WindowsVirtualMachineScaleSetSecret>? secrets,
    bool? secureBootEnabled,
    bool? singlePlacementGroup,
    required String sku,
    String? sourceImageId,
    WindowsVirtualMachineScaleSetSourceImageReference? sourceImageReference,
    WindowsVirtualMachineScaleSetSpotRestore? spotRestore,
    Map<String, String>? tags,
    WindowsVirtualMachineScaleSetTerminationNotification? terminationNotification,
    String? timezone,
    String? upgradeMode,
    String? userData,
    bool? vtpmEnabled,
    List<WindowsVirtualMachineScaleSetWinrmListener>? winrmListeners,
    bool? zoneBalance,
    List<String>? zones,
  }) :
      additionalCapabilities = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetAdditionalCapabilities>(additionalCapabilities),
      additionalUnattendContents = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineScaleSetAdditionalUnattendContent>>(additionalUnattendContents),
      adminPassword = pulumi.Input.asInput<String>(adminPassword),
      adminUsername = pulumi.Input.asInput<String>(adminUsername),
      automaticInstanceRepair = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetAutomaticInstanceRepair>(automaticInstanceRepair),
      automaticOsUpgradePolicy = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy>(automaticOsUpgradePolicy),
      bootDiagnostics = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetBootDiagnostics>(bootDiagnostics),
      capacityReservationGroupId = pulumi.Input.asOptionalInput<String>(capacityReservationGroupId),
      computerNamePrefix = pulumi.Input.asOptionalInput<String>(computerNamePrefix),
      customData = pulumi.Input.asOptionalInput<String>(customData),
      dataDisks = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineScaleSetDataDisk>>(dataDisks),
      doNotRunExtensionsOnOverprovisionedMachines = pulumi.Input.asOptionalInput<bool>(doNotRunExtensionsOnOverprovisionedMachines),
      edgeZone = pulumi.Input.asOptionalInput<String>(edgeZone),
      enableAutomaticUpdates = pulumi.Input.asOptionalInput<bool>(enableAutomaticUpdates),
      encryptionAtHostEnabled = pulumi.Input.asOptionalInput<bool>(encryptionAtHostEnabled),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      extensionOperationsEnabled = pulumi.Input.asOptionalInput<bool>(extensionOperationsEnabled),
      extensions = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineScaleSetExtension>>(extensions),
      extensionsTimeBudget = pulumi.Input.asOptionalInput<String>(extensionsTimeBudget),
      galleryApplications = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineScaleSetGalleryApplication>>(galleryApplications),
      healthProbeId = pulumi.Input.asOptionalInput<String>(healthProbeId),
      hostGroupId = pulumi.Input.asOptionalInput<String>(hostGroupId),
      identity = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetIdentity>(identity),
      instances = pulumi.Input.asInput<int>(instances),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxBidPrice = pulumi.Input.asOptionalInput<double>(maxBidPrice),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaces = pulumi.Input.asInput<List<WindowsVirtualMachineScaleSetNetworkInterface>>(networkInterfaces),
      osDisk = pulumi.Input.asInput<WindowsVirtualMachineScaleSetOsDisk>(osDisk),
      overprovision = pulumi.Input.asOptionalInput<bool>(overprovision),
      plan = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetPlan>(plan),
      platformFaultDomainCount = pulumi.Input.asOptionalInput<int>(platformFaultDomainCount),
      priority = pulumi.Input.asOptionalInput<String>(priority),
      provisionVmAgent = pulumi.Input.asOptionalInput<bool>(provisionVmAgent),
      proximityPlacementGroupId = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupId),
      resilientVmCreationEnabled = pulumi.Input.asOptionalInput<bool>(resilientVmCreationEnabled),
      resilientVmDeletionEnabled = pulumi.Input.asOptionalInput<bool>(resilientVmDeletionEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rollingUpgradePolicy = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetRollingUpgradePolicy>(rollingUpgradePolicy),
      scaleIn = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetScaleIn>(scaleIn),
      secrets = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineScaleSetSecret>>(secrets),
      secureBootEnabled = pulumi.Input.asOptionalInput<bool>(secureBootEnabled),
      singlePlacementGroup = pulumi.Input.asOptionalInput<bool>(singlePlacementGroup),
      sku = pulumi.Input.asInput<String>(sku),
      sourceImageId = pulumi.Input.asOptionalInput<String>(sourceImageId),
      sourceImageReference = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetSourceImageReference>(sourceImageReference),
      spotRestore = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetSpotRestore>(spotRestore),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      terminationNotification = pulumi.Input.asOptionalInput<WindowsVirtualMachineScaleSetTerminationNotification>(terminationNotification),
      timezone = pulumi.Input.asOptionalInput<String>(timezone),
      upgradeMode = pulumi.Input.asOptionalInput<String>(upgradeMode),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vtpmEnabled = pulumi.Input.asOptionalInput<bool>(vtpmEnabled),
      winrmListeners = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineScaleSetWinrmListener>>(winrmListeners),
      zoneBalance = pulumi.Input.asOptionalInput<bool>(zoneBalance),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetAdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'additionalUnattendContents': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineScaleSetAdditionalUnattendContent>, List<Map<String, dynamic>>>(additionalUnattendContents, (value) => pulumi.Input.encodeList<WindowsVirtualMachineScaleSetAdditionalUnattendContent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'adminPassword': adminPassword,
      'adminUsername': adminUsername,
      'automaticInstanceRepair': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetAutomaticInstanceRepair, Map<String, dynamic>>(automaticInstanceRepair, (value) => value.toMap()),
      'automaticOsUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy, Map<String, dynamic>>(automaticOsUpgradePolicy, (value) => value.toMap()),
      'bootDiagnostics': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetBootDiagnostics, Map<String, dynamic>>(bootDiagnostics, (value) => value.toMap()),
      'capacityReservationGroupId': ?capacityReservationGroupId,
      'computerNamePrefix': ?computerNamePrefix,
      'customData': ?customData,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineScaleSetDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<WindowsVirtualMachineScaleSetDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'doNotRunExtensionsOnOverprovisionedMachines': ?doNotRunExtensionsOnOverprovisionedMachines,
      'edgeZone': ?edgeZone,
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
      'encryptionAtHostEnabled': ?encryptionAtHostEnabled,
      'evictionPolicy': ?evictionPolicy,
      'extensionOperationsEnabled': ?extensionOperationsEnabled,
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineScaleSetExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<WindowsVirtualMachineScaleSetExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensionsTimeBudget': ?extensionsTimeBudget,
      'galleryApplications': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineScaleSetGalleryApplication>, List<Map<String, dynamic>>>(galleryApplications, (value) => pulumi.Input.encodeList<WindowsVirtualMachineScaleSetGalleryApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthProbeId': ?healthProbeId,
      'hostGroupId': ?hostGroupId,
      'identity': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'instances': instances,
      'licenseType': ?licenseType,
      'location': ?location,
      'maxBidPrice': ?maxBidPrice,
      'name': ?name,
      'networkInterfaces': pulumi.Input.mapInputValue<List<WindowsVirtualMachineScaleSetNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<WindowsVirtualMachineScaleSetNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDisk': pulumi.Input.mapInputValue<WindowsVirtualMachineScaleSetOsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'overprovision': ?overprovision,
      'plan': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'priority': ?priority,
      'provisionVmAgent': ?provisionVmAgent,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'resilientVmCreationEnabled': ?resilientVmCreationEnabled,
      'resilientVmDeletionEnabled': ?resilientVmDeletionEnabled,
      'resourceGroupName': resourceGroupName,
      'rollingUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetRollingUpgradePolicy, Map<String, dynamic>>(rollingUpgradePolicy, (value) => value.toMap()),
      'scaleIn': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetScaleIn, Map<String, dynamic>>(scaleIn, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineScaleSetSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<WindowsVirtualMachineScaleSetSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secureBootEnabled': ?secureBootEnabled,
      'singlePlacementGroup': ?singlePlacementGroup,
      'sku': sku,
      'sourceImageId': ?sourceImageId,
      'sourceImageReference': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetSourceImageReference, Map<String, dynamic>>(sourceImageReference, (value) => value.toMap()),
      'spotRestore': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetSpotRestore, Map<String, dynamic>>(spotRestore, (value) => value.toMap()),
      'tags': ?tags,
      'terminationNotification': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetTerminationNotification, Map<String, dynamic>>(terminationNotification, (value) => value.toMap()),
      'timezone': ?timezone,
      'upgradeMode': ?upgradeMode,
      'userData': ?userData,
      'vtpmEnabled': ?vtpmEnabled,
      'winrmListeners': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineScaleSetWinrmListener>, List<Map<String, dynamic>>>(winrmListeners, (value) => pulumi.Input.encodeList<WindowsVirtualMachineScaleSetWinrmListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneBalance': ?zoneBalance,
      'zones': ?zones,
    };
  }

  factory WindowsVirtualMachineScaleSetArgs.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetArgs(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : WindowsVirtualMachineScaleSetAdditionalCapabilities.fromMap((map['additionalCapabilities'] as Map).cast<String, dynamic>()),
      additionalUnattendContents: map['additionalUnattendContents'] == null ? null : pulumi.Input.decodeList<WindowsVirtualMachineScaleSetAdditionalUnattendContent>(map['additionalUnattendContents'], (value) => WindowsVirtualMachineScaleSetAdditionalUnattendContent.fromMap((value as Map).cast<String, dynamic>())),
      adminPassword: map['adminPassword'] as String,
      adminUsername: map['adminUsername'] as String,
      automaticInstanceRepair: map['automaticInstanceRepair'] == null ? null : WindowsVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((map['automaticInstanceRepair'] as Map).cast<String, dynamic>()),
      automaticOsUpgradePolicy: map['automaticOsUpgradePolicy'] == null ? null : WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy.fromMap((map['automaticOsUpgradePolicy'] as Map).cast<String, dynamic>()),
      bootDiagnostics: map['bootDiagnostics'] == null ? null : WindowsVirtualMachineScaleSetBootDiagnostics.fromMap((map['bootDiagnostics'] as Map).cast<String, dynamic>()),
      capacityReservationGroupId: map['capacityReservationGroupId'] == null ? null : map['capacityReservationGroupId'] as String,
      computerNamePrefix: map['computerNamePrefix'] == null ? null : map['computerNamePrefix'] as String,
      customData: map['customData'] == null ? null : map['customData'] as String,
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<WindowsVirtualMachineScaleSetDataDisk>(map['dataDisks'], (value) => WindowsVirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      doNotRunExtensionsOnOverprovisionedMachines: map['doNotRunExtensionsOnOverprovisionedMachines'] == null ? null : map['doNotRunExtensionsOnOverprovisionedMachines'] as bool,
      edgeZone: map['edgeZone'] == null ? null : map['edgeZone'] as String,
      enableAutomaticUpdates: map['enableAutomaticUpdates'] == null ? null : map['enableAutomaticUpdates'] as bool,
      encryptionAtHostEnabled: map['encryptionAtHostEnabled'] == null ? null : map['encryptionAtHostEnabled'] as bool,
      evictionPolicy: map['evictionPolicy'] == null ? null : map['evictionPolicy'] as String,
      extensionOperationsEnabled: map['extensionOperationsEnabled'] == null ? null : map['extensionOperationsEnabled'] as bool,
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<WindowsVirtualMachineScaleSetExtension>(map['extensions'], (value) => WindowsVirtualMachineScaleSetExtension.fromMap((value as Map).cast<String, dynamic>())),
      extensionsTimeBudget: map['extensionsTimeBudget'] == null ? null : map['extensionsTimeBudget'] as String,
      galleryApplications: map['galleryApplications'] == null ? null : pulumi.Input.decodeList<WindowsVirtualMachineScaleSetGalleryApplication>(map['galleryApplications'], (value) => WindowsVirtualMachineScaleSetGalleryApplication.fromMap((value as Map).cast<String, dynamic>())),
      healthProbeId: map['healthProbeId'] == null ? null : map['healthProbeId'] as String,
      hostGroupId: map['hostGroupId'] == null ? null : map['hostGroupId'] as String,
      identity: map['identity'] == null ? null : WindowsVirtualMachineScaleSetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      instances: map['instances'] as int,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maxBidPrice: map['maxBidPrice'] == null ? null : map['maxBidPrice'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<WindowsVirtualMachineScaleSetNetworkInterface>(map['networkInterfaces'], (value) => WindowsVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())),
      osDisk: WindowsVirtualMachineScaleSetOsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
      overprovision: map['overprovision'] == null ? null : map['overprovision'] as bool,
      plan: map['plan'] == null ? null : WindowsVirtualMachineScaleSetPlan.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      platformFaultDomainCount: map['platformFaultDomainCount'] == null ? null : map['platformFaultDomainCount'] as int,
      priority: map['priority'] == null ? null : map['priority'] as String,
      provisionVmAgent: map['provisionVmAgent'] == null ? null : map['provisionVmAgent'] as bool,
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : map['proximityPlacementGroupId'] as String,
      resilientVmCreationEnabled: map['resilientVmCreationEnabled'] == null ? null : map['resilientVmCreationEnabled'] as bool,
      resilientVmDeletionEnabled: map['resilientVmDeletionEnabled'] == null ? null : map['resilientVmDeletionEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      rollingUpgradePolicy: map['rollingUpgradePolicy'] == null ? null : WindowsVirtualMachineScaleSetRollingUpgradePolicy.fromMap((map['rollingUpgradePolicy'] as Map).cast<String, dynamic>()),
      scaleIn: map['scaleIn'] == null ? null : WindowsVirtualMachineScaleSetScaleIn.fromMap((map['scaleIn'] as Map).cast<String, dynamic>()),
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<WindowsVirtualMachineScaleSetSecret>(map['secrets'], (value) => WindowsVirtualMachineScaleSetSecret.fromMap((value as Map).cast<String, dynamic>())),
      secureBootEnabled: map['secureBootEnabled'] == null ? null : map['secureBootEnabled'] as bool,
      singlePlacementGroup: map['singlePlacementGroup'] == null ? null : map['singlePlacementGroup'] as bool,
      sku: map['sku'] as String,
      sourceImageId: map['sourceImageId'] == null ? null : map['sourceImageId'] as String,
      sourceImageReference: map['sourceImageReference'] == null ? null : WindowsVirtualMachineScaleSetSourceImageReference.fromMap((map['sourceImageReference'] as Map).cast<String, dynamic>()),
      spotRestore: map['spotRestore'] == null ? null : WindowsVirtualMachineScaleSetSpotRestore.fromMap((map['spotRestore'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      terminationNotification: map['terminationNotification'] == null ? null : WindowsVirtualMachineScaleSetTerminationNotification.fromMap((map['terminationNotification'] as Map).cast<String, dynamic>()),
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
      upgradeMode: map['upgradeMode'] == null ? null : map['upgradeMode'] as String,
      userData: map['userData'] == null ? null : map['userData'] as String,
      vtpmEnabled: map['vtpmEnabled'] == null ? null : map['vtpmEnabled'] as bool,
      winrmListeners: map['winrmListeners'] == null ? null : pulumi.Input.decodeList<WindowsVirtualMachineScaleSetWinrmListener>(map['winrmListeners'], (value) => WindowsVirtualMachineScaleSetWinrmListener.fromMap((value as Map).cast<String, dynamic>())),
      zoneBalance: map['zoneBalance'] == null ? null : map['zoneBalance'] as bool,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

