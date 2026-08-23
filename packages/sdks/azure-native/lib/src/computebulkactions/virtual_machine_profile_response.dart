// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_capabilities_response.dart';
import 'application_profile_response.dart';
import 'capacity_reservation_profile_response.dart';
import 'diagnostics_profile_response.dart';
import 'network_profile_response.dart';
import 'osprofile_response.dart';
import 'scheduled_events_policy_response.dart';
import 'scheduled_events_profile_response.dart';
import 'security_profile_response.dart';
import 'storage_profile_response.dart';

/// Describes the properties of a Virtual Machine.
class VirtualMachineProfileResponse {
  /// Specifies additional capabilities enabled or disabled on the virtual machine.
  final pulumi.Input<AdditionalCapabilitiesResponse>? additionalCapabilities;
  /// Specifies the gallery applications that should be made available to the VM.
  final pulumi.Input<ApplicationProfileResponse>? applicationProfile;
  /// Specifies information about the capacity reservation that is used to allocate virtual machine. Minimum compute api-version: 2021-04-01.
  final pulumi.Input<CapacityReservationProfileResponse>? capacityReservation;
  /// Specifies the boot diagnostic settings state. Minimum compute api-version: 2015-06-15.
  final pulumi.Input<DiagnosticsProfileResponse>? diagnosticsProfile;
  /// Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum compute api-version: 2020-06-01.
  final pulumi.Input<String>? extensionsTimeBudget;
  /// Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  final pulumi.Input<String>? licenseType;
  /// Specifies the network interfaces of the virtual machine.
  final pulumi.Input<NetworkProfileResponse>? networkProfile;
  /// Specifies the operating system settings used while creating the virtual machine. Some of the settings cannot be changed once VM is provisioned.
  final pulumi.Input<OSProfileResponse>? osProfile;
  /// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the virtual machine.
  final pulumi.Input<ScheduledEventsPolicyResponse>? scheduledEventsPolicy;
  /// Specifies Scheduled Event related configurations.
  final pulumi.Input<ScheduledEventsProfileResponse>? scheduledEventsProfile;
  /// Specifies the Security related profile settings for the virtual machine.
  final pulumi.Input<SecurityProfileResponse>? securityProfile;
  /// Specifies the storage settings for the virtual machine disks.
  final pulumi.Input<StorageProfileResponse>? storageProfile;
  /// UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum compute api-version: 2021-03-01.
  final pulumi.Input<String>? userData;

  /// Creates a new [VirtualMachineProfileResponse].
  /// [additionalCapabilities] Specifies additional capabilities enabled or disabled on the virtual machine.
  /// [applicationProfile] Specifies the gallery applications that should be made available to the VM.
  /// [capacityReservation] Specifies information about the capacity reservation that is used to allocate virtual machine. Minimum compute api-version: 2021-04-01.
  /// [diagnosticsProfile] Specifies the boot diagnostic settings state. Minimum compute api-version: 2015-06-15.
  /// [extensionsTimeBudget] Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum compute api-version: 2020-06-01.
  /// [licenseType] Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  /// [networkProfile] Specifies the network interfaces of the virtual machine.
  /// [osProfile] Specifies the operating system settings used while creating the virtual machine. Some of the settings cannot be changed once VM is provisioned.
  /// [scheduledEventsPolicy] Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the virtual machine.
  /// [scheduledEventsProfile] Specifies Scheduled Event related configurations.
  /// [securityProfile] Specifies the Security related profile settings for the virtual machine.
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [userData] UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum compute api-version: 2021-03-01.
  const VirtualMachineProfileResponse({
    this.additionalCapabilities,
    this.applicationProfile,
    this.capacityReservation,
    this.diagnosticsProfile,
    this.extensionsTimeBudget,
    this.licenseType,
    this.networkProfile,
    this.osProfile,
    this.scheduledEventsPolicy,
    this.scheduledEventsProfile,
    this.securityProfile,
    this.storageProfile,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<AdditionalCapabilitiesResponse, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'applicationProfile': ?pulumi.Input.mapOptionalInputValue<ApplicationProfileResponse, Map<String, dynamic>>(applicationProfile, (value) => value.toMap()),
      'capacityReservation': ?pulumi.Input.mapOptionalInputValue<CapacityReservationProfileResponse, Map<String, dynamic>>(capacityReservation, (value) => value.toMap()),
      'diagnosticsProfile': ?pulumi.Input.mapOptionalInputValue<DiagnosticsProfileResponse, Map<String, dynamic>>(diagnosticsProfile, (value) => value.toMap()),
      'extensionsTimeBudget': ?extensionsTimeBudget,
      'licenseType': ?licenseType,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfileResponse, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OSProfileResponse, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'scheduledEventsPolicy': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsPolicyResponse, Map<String, dynamic>>(scheduledEventsPolicy, (value) => value.toMap()),
      'scheduledEventsProfile': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsProfileResponse, Map<String, dynamic>>(scheduledEventsProfile, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileResponse, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfileResponse, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'userData': ?userData,
    };
  }

  factory VirtualMachineProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineProfileResponse(
      additionalCapabilities: (() { final guardedValue = map['additionalCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdditionalCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      applicationProfile: (() { final guardedValue = map['applicationProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacityReservation: (() { final guardedValue = map['capacityReservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityReservationProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diagnosticsProfile: (() { final guardedValue = map['diagnosticsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extensionsTimeBudget: (() { final guardedValue = map['extensionsTimeBudget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduledEventsPolicy: (() { final guardedValue = map['scheduledEventsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledEventsPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduledEventsProfile: (() { final guardedValue = map['scheduledEventsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledEventsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
