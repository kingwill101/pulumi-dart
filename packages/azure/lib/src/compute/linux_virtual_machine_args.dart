// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_additional_capabilities.dart';
import 'linux_virtual_machine_admin_ssh_key.dart';
import 'linux_virtual_machine_boot_diagnostics.dart';
import 'linux_virtual_machine_gallery_application.dart';
import 'linux_virtual_machine_identity.dart';
import 'linux_virtual_machine_os_disk.dart';
import 'linux_virtual_machine_os_image_notification.dart';
import 'linux_virtual_machine_plan.dart';
import 'linux_virtual_machine_secret.dart';
import 'linux_virtual_machine_source_image_reference.dart';
import 'linux_virtual_machine_termination_notification.dart';

/// {@template pulumi_compute_linux_virtual_machine_linux_virtual_machine_args_doc}
/// The set of arguments for LinuxVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_compute_linux_virtual_machine_linux_virtual_machine_args_doc}
class LinuxVirtualMachineArgs {
  /// A `additional_capabilities` block as defined below.
  final pulumi.Input<LinuxVirtualMachineAdditionalCapabilities>? additionalCapabilities;
  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** When an `admin_password` is specified `disable_password_authentication` must be set to `false`.
  /// > **NOTE:** One of either `admin_password` or `admin_ssh_key` must be specified.
  final pulumi.Input<String>? adminPassword;
  /// One or more `admin_ssh_key` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** One of either `admin_password` or `admin_ssh_key` must be specified.
  final pulumi.Input<List<LinuxVirtualMachineAdminSshKey>>? adminSshKeys;
  /// The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This is required unless using an existing OS Managed Disk by specifying `os_managed_disk_id`.
  final pulumi.Input<String>? adminUsername;
  /// Should Extension Operations be allowed on this Virtual Machine? Defaults to `true`.
  final pulumi.Input<bool>? allowExtensionOperations;
  /// Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? availabilitySetId;
  /// A `boot_diagnostics` block as defined below.
  final pulumi.Input<LinuxVirtualMachineBootDiagnostics>? bootDiagnostics;
  /// Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. Defaults to `false`.
  ///
  /// > **NOTE:** `bypass_platform_safety_checks_on_user_schedule_enabled` can only be set to `true` when `patch_mode` is set to `AutomaticByPlatform`.
  final pulumi.Input<bool>? bypassPlatformSafetyChecksOnUserScheduleEnabled;
  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to.
  ///
  /// > **NOTE:** `capacity_reservation_group_id` cannot be used with `availability_set_id` or `proximity_placement_group_id`
  final pulumi.Input<String>? capacityReservationGroupId;
  /// Specifies the Hostname which should be used for this Virtual Machine. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name`, then you must specify `computer_name`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? computerName;
  /// The Base64-Encoded Custom Data which should be used for this Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customData;
  /// The ID of a Dedicated Host Group that this Linux Virtual Machine should be run within. Conflicts with `dedicated_host_id`.
  final pulumi.Input<String>? dedicatedHostGroupId;
  /// The ID of a Dedicated Host where this machine should be run on. Conflicts with `dedicated_host_group_id`.
  final pulumi.Input<String>? dedicatedHostId;
  /// Should Password Authentication be disabled on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  ///
  /// > In general we'd recommend using SSH Keys for authentication rather than Passwords - but there's tradeoff's to each - please [see this thread for more information](https://security.stackexchange.com/questions/69407/why-is-using-an-ssh-key-more-secure-than-using-passwords).
  ///
  /// > **NOTE:** When an `admin_password` is specified `disable_password_authentication` must be set to `false`.
  final pulumi.Input<bool>? disablePasswordAuthentication;
  /// Specifies the Disk Controller Type used for this Virtual Machine. Possible values are `SCSI` and `NVMe`.
  final pulumi.Input<String>? diskControllerType;
  /// Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine should exist. Changing this forces a new Linux Virtual Machine to be created.
  final pulumi.Input<String>? edgeZone;
  /// Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  final pulumi.Input<bool>? encryptionAtHostEnabled;
  /// Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<String>? evictionPolicy;
  /// Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  final pulumi.Input<String>? extensionsTimeBudget;
  /// One or more `gallery_application` blocks as defined below.
  ///
  /// > **Note** Gallery Application Assignments can be defined either directly on `azure.compute.LinuxVirtualMachine` resource, or using the `azure.compute.GalleryApplicationAssignment` resource - but the two approaches cannot be used together. If both are used with the same Virtual Machine, spurious changes will occur. If `azure.compute.GalleryApplicationAssignment` is used, it's recommended to use `ignore_changes` for the `gallery_application` block on the corresponding `azure.compute.LinuxVirtualMachine` resource, to avoid a persistent diff when using this resource.
  final pulumi.Input<List<LinuxVirtualMachineGalleryApplication>>? galleryApplications;
  /// An `identity` block as defined below.
  final pulumi.Input<LinuxVirtualMachineIdentity>? identity;
  /// Specifies the License Type for this Virtual Machine. Possible values are `RHEL_BYOS`, `RHEL_BASE`, `RHEL_EUS`, `RHEL_SAPAPPS`, `RHEL_SAPHA`, `RHEL_BASESAPAPPS`, `RHEL_BASESAPHA`, `SLES_BYOS`, `SLES_SAP`, `SLES_HPC`, `UBUNTU_PRO`.
  final pulumi.Input<String>? licenseType;
  /// The Azure location where the Linux Virtual Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the `eviction_policy`. Defaults to `-1`, which means that the Virtual Machine should not be evicted for price reasons.
  ///
  /// > **NOTE:** This can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<double>? maxBidPrice;
  /// The name of the Linux Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// . A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine.
  final pulumi.Input<List<String>> networkInterfaceIds;
  /// A `os_disk` block as defined below.
  final pulumi.Input<LinuxVirtualMachineOsDisk> osDisk;
  /// A `os_image_notification` block as defined below.
  final pulumi.Input<LinuxVirtualMachineOsImageNotification>? osImageNotification;
  /// The ID of an existing Managed Disk to use as the OS Disk for this Linux Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When specifying an existing Managed Disk it is not currently possible to subsequently manage the Operating System Profile properties: `admin_username`, `admin_password`, `bypass_platform_safety_checks_on_user_schedule_enabled`, `computer_name`, `custom_data`, `provision_vm_agent`, `patch_mode`, `patch_assessment_mode`, or `reboot_setting`.
  final pulumi.Input<String>? osManagedDiskId;
  /// Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  ///
  /// > **NOTE:** If the `patch_assessment_mode` is set to `AutomaticByPlatform` then the `provision_vm_agent` field must be set to `true`.
  final pulumi.Input<String>? patchAssessmentMode;
  /// Specifies the mode of in-guest patching to this Linux Virtual Machine. Possible values are `AutomaticByPlatform` and `ImageDefault`. Defaults to `ImageDefault`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  ///
  /// > **NOTE:** If `patch_mode` is set to `AutomaticByPlatform` then `provision_vm_agent` must also be set to `true`.
  final pulumi.Input<String>? patchMode;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<LinuxVirtualMachinePlan>? plan;
  /// Specifies the Platform Fault Domain in which this Linux Virtual Machine should be created. Defaults to `-1`, which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Linux Virtual Machine to be created.
  final pulumi.Input<int>? platformFaultDomain;
  /// Specifies the priority of this Virtual Machine. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? priority;
  /// Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** If `provision_vm_agent` is set to `false` then `allow_extension_operations` must also be set to `false`.
  final pulumi.Input<bool>? provisionVmAgent;
  /// The ID of the Proximity Placement Group which the Virtual Machine should be assigned to.
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// Specifies the reboot setting for platform scheduled patching. Possible values are `Always`, `IfRequired` and `Never`.
  ///
  /// > **NOTE:** `reboot_setting` can only be set when `patch_mode` is set to `AutomaticByPlatform`.
  final pulumi.Input<String>? rebootSetting;
  /// The name of the Resource Group in which the Linux Virtual Machine should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `secret` blocks as defined below.
  final pulumi.Input<List<LinuxVirtualMachineSecret>>? secrets;
  /// Specifies whether secure boot should be enabled on the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? secureBootEnabled;
  /// The SKU which should be used for this Virtual Machine, such as `Standard_F2`.
  final pulumi.Input<String> size;
  /// The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  ///
  /// > **NOTE:** One of either `source_image_id` or `source_image_reference` must be set.
  final pulumi.Input<String>? sourceImageId;
  /// A `source_image_reference` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** One of either `source_image_id` or `source_image_reference` must be set.
  final pulumi.Input<LinuxVirtualMachineSourceImageReference>? sourceImageReference;
  /// A mapping of tags which should be assigned to this Virtual Machine.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `termination_notification` block as defined below.
  final pulumi.Input<LinuxVirtualMachineTerminationNotification>? terminationNotification;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine.
  final pulumi.Input<String>? userData;
  /// Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within.
  ///
  /// > **NOTE:** To update `virtual_machine_scale_set_id` the Preview Feature `Microsoft.Compute/SingleFDAttachDetachVMToVmss` needs to be enabled, see [the documentation](https://review.learn.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-attach-detach-vm#enroll-in-the-preview) for more information.
  ///
  /// > **NOTE:** Orchestrated Virtual Machine Scale Sets can be provisioned using [the `azure.compute.OrchestratedVirtualMachineScaleSet` resource](https://www.terraform.io/docs/providers/azurerm/r/orchestrated_virtual_machine_scale_set.html).
  ///
  /// > **NOTE:** To attach an existing VM to a Virtual Machine Scale Set, the scale set must have `single_placement_group` set to `false`, see [the documentation](https://learn.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-attach-detach-vm?tabs=portal-1%2Cportal-2%2Cportal-3#limitations-for-attaching-an-existing-vm-to-a-scale-set) for more information.
  final pulumi.Input<String>? virtualMachineScaleSetId;
  /// Specifies whether VMAgent Platform Updates is enabled. Defaults to `false`.
  final pulumi.Input<bool>? vmAgentPlatformUpdatesEnabled;
  /// Specifies whether vTPM should be enabled on the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? vtpmEnabled;
  /// Specifies the Availability Zones in which this Linux Virtual Machine should be located. Changing this forces a new Linux Virtual Machine to be created.
  final pulumi.Input<String>? zone;

  /// Creates a new [LinuxVirtualMachineArgs].
  /// [additionalCapabilities] A `additional_capabilities` block as defined below.
  /// [adminPassword] The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  /// [adminSshKeys] One or more `admin_ssh_key` blocks as defined below. Changing this forces a new resource to be created.
  /// [adminUsername] The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created.
  /// [allowExtensionOperations] Should Extension Operations be allowed on this Virtual Machine? Defaults to `true`.
  /// [availabilitySetId] Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  /// [bootDiagnostics] A `boot_diagnostics` block as defined below.
  /// [bypassPlatformSafetyChecksOnUserScheduleEnabled] Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. Defaults to `false`.
  /// [capacityReservationGroupId] Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to.
  /// [computerName] Specifies the Hostname which should be used for this Virtual Machine. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name`, then you must specify `computer_name`. Changing this forces a new resource to be created.
  /// [customData] The Base64-Encoded Custom Data which should be used for this Virtual Machine. Changing this forces a new resource to be created.
  /// [dedicatedHostGroupId] The ID of a Dedicated Host Group that this Linux Virtual Machine should be run within. Conflicts with `dedicated_host_id`.
  /// [dedicatedHostId] The ID of a Dedicated Host where this machine should be run on. Conflicts with `dedicated_host_group_id`.
  /// [disablePasswordAuthentication] Should Password Authentication be disabled on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  /// [diskControllerType] Specifies the Disk Controller Type used for this Virtual Machine. Possible values are `SCSI` and `NVMe`.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine should exist. Changing this forces a new Linux Virtual Machine to be created.
  /// [encryptionAtHostEnabled] Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  /// [evictionPolicy] Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  /// [extensionsTimeBudget] Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  /// [galleryApplications] One or more `gallery_application` blocks as defined below.
  /// [identity] An `identity` block as defined below.
  /// [licenseType] Specifies the License Type for this Virtual Machine. Possible values are `RHEL_BYOS`, `RHEL_BASE`, `RHEL_EUS`, `RHEL_SAPAPPS`, `RHEL_SAPHA`, `RHEL_BASESAPAPPS`, `RHEL_BASESAPHA`, `SLES_BYOS`, `SLES_SAP`, `SLES_HPC`, `UBUNTU_PRO`.
  /// [location] The Azure location where the Linux Virtual Machine should exist. Changing this forces a new resource to be created.
  /// [maxBidPrice] The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the `eviction_policy`. Defaults to `-1`, which means that the Virtual Machine should not be evicted for price reasons.
  /// [name] The name of the Linux Virtual Machine. Changing this forces a new resource to be created.
  /// [networkInterfaceIds] . A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine.
  /// [osDisk] A `os_disk` block as defined below.
  /// [osImageNotification] A `os_image_notification` block as defined below.
  /// [osManagedDiskId] The ID of an existing Managed Disk to use as the OS Disk for this Linux Virtual Machine. Changing this forces a new resource to be created.
  /// [patchAssessmentMode] Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  /// [patchMode] Specifies the mode of in-guest patching to this Linux Virtual Machine. Possible values are `AutomaticByPlatform` and `ImageDefault`. Defaults to `ImageDefault`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  /// [plan] A `plan` block as defined below. Changing this forces a new resource to be created.
  /// [platformFaultDomain] Specifies the Platform Fault Domain in which this Linux Virtual Machine should be created. Defaults to `-1`, which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Linux Virtual Machine to be created.
  /// [priority] Specifies the priority of this Virtual Machine. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  /// [provisionVmAgent] Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group which the Virtual Machine should be assigned to.
  /// [rebootSetting] Specifies the reboot setting for platform scheduled patching. Possible values are `Always`, `IfRequired` and `Never`.
  /// [resourceGroupName] The name of the Resource Group in which the Linux Virtual Machine should be exist. Changing this forces a new resource to be created.
  /// [secrets] One or more `secret` blocks as defined below.
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine. Changing this forces a new resource to be created.
  /// [size] The SKU which should be used for this Virtual Machine, such as `Standard_F2`.
  /// [sourceImageId] The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  /// [sourceImageReference] A `source_image_reference` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to this Virtual Machine.
  /// [terminationNotification] A `termination_notification` block as defined below.
  /// [userData] The Base64-Encoded User Data which should be used for this Virtual Machine.
  /// [virtualMachineScaleSetId] Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within.
  /// [vmAgentPlatformUpdatesEnabled] Specifies whether VMAgent Platform Updates is enabled. Defaults to `false`.
  /// [vtpmEnabled] Specifies whether vTPM should be enabled on the virtual machine. Changing this forces a new resource to be created.
  /// [zone] Specifies the Availability Zones in which this Linux Virtual Machine should be located. Changing this forces a new Linux Virtual Machine to be created.
  LinuxVirtualMachineArgs({
    LinuxVirtualMachineAdditionalCapabilities? additionalCapabilities,
    String? adminPassword,
    List<LinuxVirtualMachineAdminSshKey>? adminSshKeys,
    String? adminUsername,
    bool? allowExtensionOperations,
    String? availabilitySetId,
    LinuxVirtualMachineBootDiagnostics? bootDiagnostics,
    bool? bypassPlatformSafetyChecksOnUserScheduleEnabled,
    String? capacityReservationGroupId,
    String? computerName,
    String? customData,
    String? dedicatedHostGroupId,
    String? dedicatedHostId,
    bool? disablePasswordAuthentication,
    String? diskControllerType,
    String? edgeZone,
    bool? encryptionAtHostEnabled,
    String? evictionPolicy,
    String? extensionsTimeBudget,
    List<LinuxVirtualMachineGalleryApplication>? galleryApplications,
    LinuxVirtualMachineIdentity? identity,
    String? licenseType,
    String? location,
    double? maxBidPrice,
    String? name,
    required List<String> networkInterfaceIds,
    required LinuxVirtualMachineOsDisk osDisk,
    LinuxVirtualMachineOsImageNotification? osImageNotification,
    String? osManagedDiskId,
    String? patchAssessmentMode,
    String? patchMode,
    LinuxVirtualMachinePlan? plan,
    int? platformFaultDomain,
    String? priority,
    bool? provisionVmAgent,
    String? proximityPlacementGroupId,
    String? rebootSetting,
    required String resourceGroupName,
    List<LinuxVirtualMachineSecret>? secrets,
    bool? secureBootEnabled,
    required String size,
    String? sourceImageId,
    LinuxVirtualMachineSourceImageReference? sourceImageReference,
    Map<String, String>? tags,
    LinuxVirtualMachineTerminationNotification? terminationNotification,
    String? userData,
    String? virtualMachineScaleSetId,
    bool? vmAgentPlatformUpdatesEnabled,
    bool? vtpmEnabled,
    String? zone,
  }) :
      additionalCapabilities = pulumi.Input.asOptionalInput<LinuxVirtualMachineAdditionalCapabilities>(additionalCapabilities),
      adminPassword = pulumi.Input.asOptionalInput<String>(adminPassword),
      adminSshKeys = pulumi.Input.asOptionalInput<List<LinuxVirtualMachineAdminSshKey>>(adminSshKeys),
      adminUsername = pulumi.Input.asOptionalInput<String>(adminUsername),
      allowExtensionOperations = pulumi.Input.asOptionalInput<bool>(allowExtensionOperations),
      availabilitySetId = pulumi.Input.asOptionalInput<String>(availabilitySetId),
      bootDiagnostics = pulumi.Input.asOptionalInput<LinuxVirtualMachineBootDiagnostics>(bootDiagnostics),
      bypassPlatformSafetyChecksOnUserScheduleEnabled = pulumi.Input.asOptionalInput<bool>(bypassPlatformSafetyChecksOnUserScheduleEnabled),
      capacityReservationGroupId = pulumi.Input.asOptionalInput<String>(capacityReservationGroupId),
      computerName = pulumi.Input.asOptionalInput<String>(computerName),
      customData = pulumi.Input.asOptionalInput<String>(customData),
      dedicatedHostGroupId = pulumi.Input.asOptionalInput<String>(dedicatedHostGroupId),
      dedicatedHostId = pulumi.Input.asOptionalInput<String>(dedicatedHostId),
      disablePasswordAuthentication = pulumi.Input.asOptionalInput<bool>(disablePasswordAuthentication),
      diskControllerType = pulumi.Input.asOptionalInput<String>(diskControllerType),
      edgeZone = pulumi.Input.asOptionalInput<String>(edgeZone),
      encryptionAtHostEnabled = pulumi.Input.asOptionalInput<bool>(encryptionAtHostEnabled),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      extensionsTimeBudget = pulumi.Input.asOptionalInput<String>(extensionsTimeBudget),
      galleryApplications = pulumi.Input.asOptionalInput<List<LinuxVirtualMachineGalleryApplication>>(galleryApplications),
      identity = pulumi.Input.asOptionalInput<LinuxVirtualMachineIdentity>(identity),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxBidPrice = pulumi.Input.asOptionalInput<double>(maxBidPrice),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaceIds = pulumi.Input.asInput<List<String>>(networkInterfaceIds),
      osDisk = pulumi.Input.asInput<LinuxVirtualMachineOsDisk>(osDisk),
      osImageNotification = pulumi.Input.asOptionalInput<LinuxVirtualMachineOsImageNotification>(osImageNotification),
      osManagedDiskId = pulumi.Input.asOptionalInput<String>(osManagedDiskId),
      patchAssessmentMode = pulumi.Input.asOptionalInput<String>(patchAssessmentMode),
      patchMode = pulumi.Input.asOptionalInput<String>(patchMode),
      plan = pulumi.Input.asOptionalInput<LinuxVirtualMachinePlan>(plan),
      platformFaultDomain = pulumi.Input.asOptionalInput<int>(platformFaultDomain),
      priority = pulumi.Input.asOptionalInput<String>(priority),
      provisionVmAgent = pulumi.Input.asOptionalInput<bool>(provisionVmAgent),
      proximityPlacementGroupId = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupId),
      rebootSetting = pulumi.Input.asOptionalInput<String>(rebootSetting),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secrets = pulumi.Input.asOptionalInput<List<LinuxVirtualMachineSecret>>(secrets),
      secureBootEnabled = pulumi.Input.asOptionalInput<bool>(secureBootEnabled),
      size = pulumi.Input.asInput<String>(size),
      sourceImageId = pulumi.Input.asOptionalInput<String>(sourceImageId),
      sourceImageReference = pulumi.Input.asOptionalInput<LinuxVirtualMachineSourceImageReference>(sourceImageReference),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      terminationNotification = pulumi.Input.asOptionalInput<LinuxVirtualMachineTerminationNotification>(terminationNotification),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      virtualMachineScaleSetId = pulumi.Input.asOptionalInput<String>(virtualMachineScaleSetId),
      vmAgentPlatformUpdatesEnabled = pulumi.Input.asOptionalInput<bool>(vmAgentPlatformUpdatesEnabled),
      vtpmEnabled = pulumi.Input.asOptionalInput<bool>(vtpmEnabled),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineAdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'adminPassword': ?adminPassword,
      'adminSshKeys': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineAdminSshKey>, List<Map<String, dynamic>>>(adminSshKeys, (value) => pulumi.Input.encodeList<LinuxVirtualMachineAdminSshKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'adminUsername': ?adminUsername,
      'allowExtensionOperations': ?allowExtensionOperations,
      'availabilitySetId': ?availabilitySetId,
      'bootDiagnostics': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineBootDiagnostics, Map<String, dynamic>>(bootDiagnostics, (value) => value.toMap()),
      'bypassPlatformSafetyChecksOnUserScheduleEnabled': ?bypassPlatformSafetyChecksOnUserScheduleEnabled,
      'capacityReservationGroupId': ?capacityReservationGroupId,
      'computerName': ?computerName,
      'customData': ?customData,
      'dedicatedHostGroupId': ?dedicatedHostGroupId,
      'dedicatedHostId': ?dedicatedHostId,
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'diskControllerType': ?diskControllerType,
      'edgeZone': ?edgeZone,
      'encryptionAtHostEnabled': ?encryptionAtHostEnabled,
      'evictionPolicy': ?evictionPolicy,
      'extensionsTimeBudget': ?extensionsTimeBudget,
      'galleryApplications': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineGalleryApplication>, List<Map<String, dynamic>>>(galleryApplications, (value) => pulumi.Input.encodeList<LinuxVirtualMachineGalleryApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': ?location,
      'maxBidPrice': ?maxBidPrice,
      'name': ?name,
      'networkInterfaceIds': networkInterfaceIds,
      'osDisk': pulumi.Input.mapInputValue<LinuxVirtualMachineOsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'osImageNotification': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineOsImageNotification, Map<String, dynamic>>(osImageNotification, (value) => value.toMap()),
      'osManagedDiskId': ?osManagedDiskId,
      'patchAssessmentMode': ?patchAssessmentMode,
      'patchMode': ?patchMode,
      'plan': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachinePlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'platformFaultDomain': ?platformFaultDomain,
      'priority': ?priority,
      'provisionVmAgent': ?provisionVmAgent,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'rebootSetting': ?rebootSetting,
      'resourceGroupName': resourceGroupName,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<LinuxVirtualMachineSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secureBootEnabled': ?secureBootEnabled,
      'size': size,
      'sourceImageId': ?sourceImageId,
      'sourceImageReference': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineSourceImageReference, Map<String, dynamic>>(sourceImageReference, (value) => value.toMap()),
      'tags': ?tags,
      'terminationNotification': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineTerminationNotification, Map<String, dynamic>>(terminationNotification, (value) => value.toMap()),
      'userData': ?userData,
      'virtualMachineScaleSetId': ?virtualMachineScaleSetId,
      'vmAgentPlatformUpdatesEnabled': ?vmAgentPlatformUpdatesEnabled,
      'vtpmEnabled': ?vtpmEnabled,
      'zone': ?zone,
    };
  }

  factory LinuxVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineArgs(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : LinuxVirtualMachineAdditionalCapabilities.fromMap((map['additionalCapabilities'] as Map).cast<String, dynamic>()),
      adminPassword: map['adminPassword'] == null ? null : map['adminPassword'] as String,
      adminSshKeys: map['adminSshKeys'] == null ? null : pulumi.Input.decodeList<LinuxVirtualMachineAdminSshKey>(map['adminSshKeys'], (value) => LinuxVirtualMachineAdminSshKey.fromMap((value as Map).cast<String, dynamic>())),
      adminUsername: map['adminUsername'] == null ? null : map['adminUsername'] as String,
      allowExtensionOperations: map['allowExtensionOperations'] == null ? null : map['allowExtensionOperations'] as bool,
      availabilitySetId: map['availabilitySetId'] == null ? null : map['availabilitySetId'] as String,
      bootDiagnostics: map['bootDiagnostics'] == null ? null : LinuxVirtualMachineBootDiagnostics.fromMap((map['bootDiagnostics'] as Map).cast<String, dynamic>()),
      bypassPlatformSafetyChecksOnUserScheduleEnabled: map['bypassPlatformSafetyChecksOnUserScheduleEnabled'] == null ? null : map['bypassPlatformSafetyChecksOnUserScheduleEnabled'] as bool,
      capacityReservationGroupId: map['capacityReservationGroupId'] == null ? null : map['capacityReservationGroupId'] as String,
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
      customData: map['customData'] == null ? null : map['customData'] as String,
      dedicatedHostGroupId: map['dedicatedHostGroupId'] == null ? null : map['dedicatedHostGroupId'] as String,
      dedicatedHostId: map['dedicatedHostId'] == null ? null : map['dedicatedHostId'] as String,
      disablePasswordAuthentication: map['disablePasswordAuthentication'] == null ? null : map['disablePasswordAuthentication'] as bool,
      diskControllerType: map['diskControllerType'] == null ? null : map['diskControllerType'] as String,
      edgeZone: map['edgeZone'] == null ? null : map['edgeZone'] as String,
      encryptionAtHostEnabled: map['encryptionAtHostEnabled'] == null ? null : map['encryptionAtHostEnabled'] as bool,
      evictionPolicy: map['evictionPolicy'] == null ? null : map['evictionPolicy'] as String,
      extensionsTimeBudget: map['extensionsTimeBudget'] == null ? null : map['extensionsTimeBudget'] as String,
      galleryApplications: map['galleryApplications'] == null ? null : pulumi.Input.decodeList<LinuxVirtualMachineGalleryApplication>(map['galleryApplications'], (value) => LinuxVirtualMachineGalleryApplication.fromMap((value as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : LinuxVirtualMachineIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maxBidPrice: map['maxBidPrice'] == null ? null : map['maxBidPrice'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      networkInterfaceIds: (map['networkInterfaceIds'] as List).cast<String>(),
      osDisk: LinuxVirtualMachineOsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
      osImageNotification: map['osImageNotification'] == null ? null : LinuxVirtualMachineOsImageNotification.fromMap((map['osImageNotification'] as Map).cast<String, dynamic>()),
      osManagedDiskId: map['osManagedDiskId'] == null ? null : map['osManagedDiskId'] as String,
      patchAssessmentMode: map['patchAssessmentMode'] == null ? null : map['patchAssessmentMode'] as String,
      patchMode: map['patchMode'] == null ? null : map['patchMode'] as String,
      plan: map['plan'] == null ? null : LinuxVirtualMachinePlan.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      platformFaultDomain: map['platformFaultDomain'] == null ? null : map['platformFaultDomain'] as int,
      priority: map['priority'] == null ? null : map['priority'] as String,
      provisionVmAgent: map['provisionVmAgent'] == null ? null : map['provisionVmAgent'] as bool,
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : map['proximityPlacementGroupId'] as String,
      rebootSetting: map['rebootSetting'] == null ? null : map['rebootSetting'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<LinuxVirtualMachineSecret>(map['secrets'], (value) => LinuxVirtualMachineSecret.fromMap((value as Map).cast<String, dynamic>())),
      secureBootEnabled: map['secureBootEnabled'] == null ? null : map['secureBootEnabled'] as bool,
      size: map['size'] as String,
      sourceImageId: map['sourceImageId'] == null ? null : map['sourceImageId'] as String,
      sourceImageReference: map['sourceImageReference'] == null ? null : LinuxVirtualMachineSourceImageReference.fromMap((map['sourceImageReference'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      terminationNotification: map['terminationNotification'] == null ? null : LinuxVirtualMachineTerminationNotification.fromMap((map['terminationNotification'] as Map).cast<String, dynamic>()),
      userData: map['userData'] == null ? null : map['userData'] as String,
      virtualMachineScaleSetId: map['virtualMachineScaleSetId'] == null ? null : map['virtualMachineScaleSetId'] as String,
      vmAgentPlatformUpdatesEnabled: map['vmAgentPlatformUpdatesEnabled'] == null ? null : map['vmAgentPlatformUpdatesEnabled'] as bool,
      vtpmEnabled: map['vtpmEnabled'] == null ? null : map['vtpmEnabled'] as bool,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

