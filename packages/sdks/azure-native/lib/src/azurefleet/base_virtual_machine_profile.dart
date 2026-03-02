// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_profile.dart';
import 'capacity_reservation_profile.dart';
import 'diagnostics_profile.dart';
import 'scheduled_events_profile.dart';
import 'security_posture_reference.dart';
import 'security_profile.dart';
import 'service_artifact_reference.dart';
import 'virtual_machine_scale_set_extension_profile.dart';
import 'virtual_machine_scale_set_hardware_profile.dart';
import 'virtual_machine_scale_set_network_profile.dart';
import 'virtual_machine_scale_set_osprofile.dart';
import 'virtual_machine_scale_set_storage_profile.dart';

/// Describes the base virtual machine profile for fleet
class BaseVirtualMachineProfile {
  /// Specifies the gallery applications that should be made available to the VM/VMSS
  final pulumi.Input<ApplicationProfile>? applicationProfile;
  /// Specifies the capacity reservation related details of a scale set. Minimum
  /// api-version: 2021-04-01.
  final pulumi.Input<CapacityReservationProfile>? capacityReservation;
  /// Specifies the boot diagnostic settings state.
  final pulumi.Input<DiagnosticsProfile>? diagnosticsProfile;
  /// Specifies a collection of settings for extensions installed on virtual machines
  /// in the scale set.
  final pulumi.Input<VirtualMachineScaleSetExtensionProfile>? extensionProfile;
  /// Specifies the hardware profile related details of a scale set. Minimum
  /// api-version: 2021-11-01.
  final pulumi.Input<VirtualMachineScaleSetHardwareProfile>? hardwareProfile;
  /// Specifies that the image or disk that is being used was licensed on-premises.
  /// <br><br> Possible values for Windows Server operating system are: <br><br>
  /// Windows_Client <br><br> Windows_Server <br><br> Possible values for Linux
  /// Server operating system are: <br><br> RHEL_BYOS (for RHEL) <br><br> SLES_BYOS
  /// (for SUSE) <br><br> For more information, see [Azure Hybrid Use Benefit for
  /// Windows
  /// Server](https://learn.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing)
  /// <br><br> [Azure Hybrid Use Benefit for Linux
  /// Server](https://learn.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux)
  /// <br><br> Minimum api-version: 2015-06-15
  final pulumi.Input<String>? licenseType;
  /// Specifies properties of the network interfaces of the virtual machines in the
  /// scale set.
  final pulumi.Input<VirtualMachineScaleSetNetworkProfile>? networkProfile;
  /// Specifies the operating system settings for the virtual machines in the scale
  /// set.
  final pulumi.Input<VirtualMachineScaleSetOSProfile>? osProfile;
  /// Specifies Scheduled Event related configurations.
  final pulumi.Input<ScheduledEventsProfile>? scheduledEventsProfile;
  /// Specifies the security posture to be used for all virtual machines in the scale
  /// set. Minimum api-version: 2023-03-01
  final pulumi.Input<SecurityPostureReference>? securityPostureReference;
  /// Specifies the Security related profile settings for the virtual machines in the
  /// scale set.
  final pulumi.Input<SecurityProfile>? securityProfile;
  /// Specifies the service artifact reference id used to set same image version for
  /// all virtual machines in the scale set when using 'latest' image version.
  /// Minimum api-version: 2022-11-01
  final pulumi.Input<ServiceArtifactReference>? serviceArtifactReference;
  /// Specifies the storage settings for the virtual machine disks.
  final pulumi.Input<VirtualMachineScaleSetStorageProfile>? storageProfile;
  /// UserData for the virtual machines in the scale set, which must be base-64
  /// encoded. Customer should not pass any secrets in here. Minimum api-version:
  /// 2021-03-01.
  final pulumi.Input<String>? userData;

  /// Creates a new [BaseVirtualMachineProfile].
  /// [applicationProfile] Specifies the gallery applications that should be made available to the VM/VMSS
  /// [capacityReservation] Specifies the capacity reservation related details of a scale set. Minimum
  /// [diagnosticsProfile] Specifies the boot diagnostic settings state.
  /// [extensionProfile] Specifies a collection of settings for extensions installed on virtual machines
  /// [hardwareProfile] Specifies the hardware profile related details of a scale set. Minimum
  /// [licenseType] Specifies that the image or disk that is being used was licensed on-premises.
  /// [networkProfile] Specifies properties of the network interfaces of the virtual machines in the
  /// [osProfile] Specifies the operating system settings for the virtual machines in the scale
  /// [scheduledEventsProfile] Specifies Scheduled Event related configurations.
  /// [securityPostureReference] Specifies the security posture to be used for all virtual machines in the scale
  /// [securityProfile] Specifies the Security related profile settings for the virtual machines in the
  /// [serviceArtifactReference] Specifies the service artifact reference id used to set same image version for
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [userData] UserData for the virtual machines in the scale set, which must be base-64
  BaseVirtualMachineProfile({
    this.applicationProfile,
    this.capacityReservation,
    this.diagnosticsProfile,
    this.extensionProfile,
    this.hardwareProfile,
    this.licenseType,
    this.networkProfile,
    this.osProfile,
    this.scheduledEventsProfile,
    this.securityPostureReference,
    this.securityProfile,
    this.serviceArtifactReference,
    this.storageProfile,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationProfile': ?pulumi.Input.mapOptionalInputValue<ApplicationProfile, Map<String, dynamic>>(applicationProfile, (value) => value.toMap()),
      'capacityReservation': ?pulumi.Input.mapOptionalInputValue<CapacityReservationProfile, Map<String, dynamic>>(capacityReservation, (value) => value.toMap()),
      'diagnosticsProfile': ?pulumi.Input.mapOptionalInputValue<DiagnosticsProfile, Map<String, dynamic>>(diagnosticsProfile, (value) => value.toMap()),
      'extensionProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetExtensionProfile, Map<String, dynamic>>(extensionProfile, (value) => value.toMap()),
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetHardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetOSProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'scheduledEventsProfile': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsProfile, Map<String, dynamic>>(scheduledEventsProfile, (value) => value.toMap()),
      'securityPostureReference': ?pulumi.Input.mapOptionalInputValue<SecurityPostureReference, Map<String, dynamic>>(securityPostureReference, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'serviceArtifactReference': ?pulumi.Input.mapOptionalInputValue<ServiceArtifactReference, Map<String, dynamic>>(serviceArtifactReference, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetStorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'userData': ?userData,
    };
  }

  factory BaseVirtualMachineProfile.fromMap(Map<String, dynamic> map) {
    return BaseVirtualMachineProfile(
      applicationProfile: map['applicationProfile'] == null ? null : (ApplicationProfile.fromMap((map['applicationProfile'] as Map).cast<String, dynamic>())).input(),
      capacityReservation: map['capacityReservation'] == null ? null : (CapacityReservationProfile.fromMap((map['capacityReservation'] as Map).cast<String, dynamic>())).input(),
      diagnosticsProfile: map['diagnosticsProfile'] == null ? null : (DiagnosticsProfile.fromMap((map['diagnosticsProfile'] as Map).cast<String, dynamic>())).input(),
      extensionProfile: map['extensionProfile'] == null ? null : (VirtualMachineScaleSetExtensionProfile.fromMap((map['extensionProfile'] as Map).cast<String, dynamic>())).input(),
      hardwareProfile: map['hardwareProfile'] == null ? null : (VirtualMachineScaleSetHardwareProfile.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>())).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (VirtualMachineScaleSetNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      osProfile: map['osProfile'] == null ? null : (VirtualMachineScaleSetOSProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())).input(),
      scheduledEventsProfile: map['scheduledEventsProfile'] == null ? null : (ScheduledEventsProfile.fromMap((map['scheduledEventsProfile'] as Map).cast<String, dynamic>())).input(),
      securityPostureReference: map['securityPostureReference'] == null ? null : (SecurityPostureReference.fromMap((map['securityPostureReference'] as Map).cast<String, dynamic>())).input(),
      securityProfile: map['securityProfile'] == null ? null : (SecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
      serviceArtifactReference: map['serviceArtifactReference'] == null ? null : (ServiceArtifactReference.fromMap((map['serviceArtifactReference'] as Map).cast<String, dynamic>())).input(),
      storageProfile: map['storageProfile'] == null ? null : (VirtualMachineScaleSetStorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())).input(),
      userData: map['userData'] == null ? null : (map['userData'] as String).input(),
    );
  }
}

