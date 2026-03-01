// ignore_for_file: unused_element, unnecessary_cast

import 'application_profile_response.dart';
import 'billing_profile_response.dart';
import 'capacity_reservation_profile_response.dart';
import 'diagnostics_profile_response.dart';
import 'scheduled_events_profile_response.dart';
import 'security_posture_reference_response.dart';
import 'security_profile_response.dart';
import 'service_artifact_reference_response.dart';
import 'virtual_machine_scale_set_extension_profile_response.dart';
import 'virtual_machine_scale_set_hardware_profile_response.dart';
import 'virtual_machine_scale_set_network_profile_response.dart';
import 'virtual_machine_scale_set_osprofile_response.dart';
import 'virtual_machine_scale_set_storage_profile_response.dart';

/// Describes a virtual machine scale set virtual machine profile.
class VirtualMachineScaleSetVMProfileResponse {
  /// Specifies the gallery applications that should be made available to the VM/VMSS
  final ApplicationProfileResponse? applicationProfile;
  /// Specifies the billing related details of a Azure Spot VMSS. Minimum api-version: 2019-03-01.
  final BillingProfileResponse? billingProfile;
  /// Specifies the capacity reservation related details of a scale set. Minimum api-version: 2021-04-01.
  final CapacityReservationProfileResponse? capacityReservation;
  /// Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  final DiagnosticsProfileResponse? diagnosticsProfile;
  /// Specifies the eviction policy for the Azure Spot virtual machine and Azure Spot scale set. For Azure Spot virtual machines, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2019-03-01. For Azure Spot scale sets, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2017-10-30-preview.
  final String? evictionPolicy;
  /// Specifies a collection of settings for extensions installed on virtual machines in the scale set.
  final VirtualMachineScaleSetExtensionProfileResponse? extensionProfile;
  /// Specifies the hardware profile related details of a scale set. Minimum api-version: 2021-11-01.
  final VirtualMachineScaleSetHardwareProfileResponse? hardwareProfile;
  /// Specifies that the image or disk that is being used was licensed on-premises. <br><br> Possible values for Windows Server operating system are: <br><br> Windows_Client <br><br> Windows_Server <br><br> Possible values for Linux Server operating system are: <br><br> RHEL_BYOS (for RHEL) <br><br> SLES_BYOS (for SUSE) <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) <br><br> [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) <br><br> Minimum api-version: 2015-06-15
  final String? licenseType;
  /// Specifies properties of the network interfaces of the virtual machines in the scale set.
  final VirtualMachineScaleSetNetworkProfileResponse? networkProfile;
  /// Specifies the operating system settings for the virtual machines in the scale set.
  final VirtualMachineScaleSetOSProfileResponse? osProfile;
  /// Specifies the priority for the virtual machines in the scale set. Minimum api-version: 2017-10-30-preview.
  final String? priority;
  /// Specifies Scheduled Event related configurations.
  final ScheduledEventsProfileResponse? scheduledEventsProfile;
  /// Specifies the security posture to be used in the scale set. Minimum api-version: 2023-03-01
  final SecurityPostureReferenceResponse? securityPostureReference;
  /// Specifies the Security related profile settings for the virtual machines in the scale set.
  final SecurityProfileResponse? securityProfile;
  /// Specifies the service artifact reference id used to set same image version for all virtual machines in the scale set when using 'latest' image version. Minimum api-version: 2022-11-01
  final ServiceArtifactReferenceResponse? serviceArtifactReference;
  /// Specifies the storage settings for the virtual machine disks.
  final VirtualMachineScaleSetStorageProfileResponse? storageProfile;
  /// Specifies the time in which this VM profile for the Virtual Machine Scale Set was created. This value will be added to VMSS Flex VM tags when creating/updating the VMSS VM Profile. Minimum API version for this property is 2023-09-01.
  final String timeCreated;
  /// UserData for the virtual machines in the scale set, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01.
  final String? userData;

  /// Creates a new [VirtualMachineScaleSetVMProfileResponse].
  /// [applicationProfile] Specifies the gallery applications that should be made available to the VM/VMSS
  /// [billingProfile] Specifies the billing related details of a Azure Spot VMSS. Minimum api-version: 2019-03-01.
  /// [capacityReservation] Specifies the capacity reservation related details of a scale set. Minimum api-version: 2021-04-01.
  /// [diagnosticsProfile] Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  /// [evictionPolicy] Specifies the eviction policy for the Azure Spot virtual machine and Azure Spot scale set. For Azure Spot virtual machines, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2019-03-01. For Azure Spot scale sets, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2017-10-30-preview.
  /// [extensionProfile] Specifies a collection of settings for extensions installed on virtual machines in the scale set.
  /// [hardwareProfile] Specifies the hardware profile related details of a scale set. Minimum api-version: 2021-11-01.
  /// [licenseType] Specifies that the image or disk that is being used was licensed on-premises. <br><br> Possible values for Windows Server operating system are: <br><br> Windows_Client <br><br> Windows_Server <br><br> Possible values for Linux Server operating system are: <br><br> RHEL_BYOS (for RHEL) <br><br> SLES_BYOS (for SUSE) <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) <br><br> [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) <br><br> Minimum api-version: 2015-06-15
  /// [networkProfile] Specifies properties of the network interfaces of the virtual machines in the scale set.
  /// [osProfile] Specifies the operating system settings for the virtual machines in the scale set.
  /// [priority] Specifies the priority for the virtual machines in the scale set. Minimum api-version: 2017-10-30-preview.
  /// [scheduledEventsProfile] Specifies Scheduled Event related configurations.
  /// [securityPostureReference] Specifies the security posture to be used in the scale set. Minimum api-version: 2023-03-01
  /// [securityProfile] Specifies the Security related profile settings for the virtual machines in the scale set.
  /// [serviceArtifactReference] Specifies the service artifact reference id used to set same image version for all virtual machines in the scale set when using 'latest' image version. Minimum api-version: 2022-11-01
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [timeCreated] Specifies the time in which this VM profile for the Virtual Machine Scale Set was created. This value will be added to VMSS Flex VM tags when creating/updating the VMSS VM Profile. Minimum API version for this property is 2023-09-01.
  /// [userData] UserData for the virtual machines in the scale set, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01.
  VirtualMachineScaleSetVMProfileResponse({
    this.applicationProfile,
    this.billingProfile,
    this.capacityReservation,
    this.diagnosticsProfile,
    this.evictionPolicy,
    this.extensionProfile,
    this.hardwareProfile,
    this.licenseType,
    this.networkProfile,
    this.osProfile,
    this.priority,
    this.scheduledEventsProfile,
    this.securityPostureReference,
    this.securityProfile,
    this.serviceArtifactReference,
    this.storageProfile,
    required this.timeCreated,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationProfile': ?applicationProfile == null ? null : applicationProfile!.toMap(),
      'billingProfile': ?billingProfile == null ? null : billingProfile!.toMap(),
      'capacityReservation': ?capacityReservation == null ? null : capacityReservation!.toMap(),
      'diagnosticsProfile': ?diagnosticsProfile == null ? null : diagnosticsProfile!.toMap(),
      'evictionPolicy': ?evictionPolicy,
      'extensionProfile': ?extensionProfile == null ? null : extensionProfile!.toMap(),
      'hardwareProfile': ?hardwareProfile == null ? null : hardwareProfile!.toMap(),
      'licenseType': ?licenseType,
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'priority': ?priority,
      'scheduledEventsProfile': ?scheduledEventsProfile == null ? null : scheduledEventsProfile!.toMap(),
      'securityPostureReference': ?securityPostureReference == null ? null : securityPostureReference!.toMap(),
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'serviceArtifactReference': ?serviceArtifactReference == null ? null : serviceArtifactReference!.toMap(),
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'timeCreated': timeCreated,
      'userData': ?userData,
    };
  }

  factory VirtualMachineScaleSetVMProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetVMProfileResponse(
      applicationProfile: map['applicationProfile'] == null ? null : ApplicationProfileResponse.fromMap((map['applicationProfile'] as Map).cast<String, dynamic>()),
      billingProfile: map['billingProfile'] == null ? null : BillingProfileResponse.fromMap((map['billingProfile'] as Map).cast<String, dynamic>()),
      capacityReservation: map['capacityReservation'] == null ? null : CapacityReservationProfileResponse.fromMap((map['capacityReservation'] as Map).cast<String, dynamic>()),
      diagnosticsProfile: map['diagnosticsProfile'] == null ? null : DiagnosticsProfileResponse.fromMap((map['diagnosticsProfile'] as Map).cast<String, dynamic>()),
      evictionPolicy: map['evictionPolicy'] == null ? null : map['evictionPolicy'] as String,
      extensionProfile: map['extensionProfile'] == null ? null : VirtualMachineScaleSetExtensionProfileResponse.fromMap((map['extensionProfile'] as Map).cast<String, dynamic>()),
      hardwareProfile: map['hardwareProfile'] == null ? null : VirtualMachineScaleSetHardwareProfileResponse.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>()),
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      networkProfile: map['networkProfile'] == null ? null : VirtualMachineScaleSetNetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : VirtualMachineScaleSetOSProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      priority: map['priority'] == null ? null : map['priority'] as String,
      scheduledEventsProfile: map['scheduledEventsProfile'] == null ? null : ScheduledEventsProfileResponse.fromMap((map['scheduledEventsProfile'] as Map).cast<String, dynamic>()),
      securityPostureReference: map['securityPostureReference'] == null ? null : SecurityPostureReferenceResponse.fromMap((map['securityPostureReference'] as Map).cast<String, dynamic>()),
      securityProfile: map['securityProfile'] == null ? null : SecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      serviceArtifactReference: map['serviceArtifactReference'] == null ? null : ServiceArtifactReferenceResponse.fromMap((map['serviceArtifactReference'] as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : VirtualMachineScaleSetStorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      timeCreated: map['timeCreated'] as String,
      userData: map['userData'] == null ? null : map['userData'] as String,
    );
  }
}

