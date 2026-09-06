// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SecuritySettings of AzureStackHCI Cluster.
class DeploymentSecuritySettingsResponse {
  /// When set to true, BitLocker XTS_AES 256-bit encryption is enabled for all data-at-rest on the OS volume of your Azure Stack HCI cluster. This setting is TPM-hardware dependent.
  final pulumi.Input<bool?>? bitlockerBootVolume;
  /// When set to true, BitLocker XTS-AES 256-bit encryption is enabled for all data-at-rest on your Azure Stack HCI cluster shared volumes.
  final pulumi.Input<bool?>? bitlockerDataVolumes;
  /// When set to true, Credential Guard is enabled.
  final pulumi.Input<bool?>? credentialGuardEnforced;
  /// When set to true, the security baseline is re-applied regularly.
  final pulumi.Input<bool?>? driftControlEnforced;
  /// By default, Secure Boot is enabled on your Azure HCI cluster. This setting is hardware dependent.
  final pulumi.Input<bool?>? drtmProtection;
  /// By default, Hypervisor-protected Code Integrity is enabled on your Azure HCI cluster.
  final pulumi.Input<bool?>? hvciProtection;
  /// When set to true, all the side channel mitigations are enabled
  final pulumi.Input<bool?>? sideChannelMitigationEnforced;
  /// When set to true, cluster east-west traffic is encrypted.
  final pulumi.Input<bool?>? smbClusterEncryption;
  /// When set to true, the SMB default instance requires sign in for the client and server services.
  final pulumi.Input<bool?>? smbSigningEnforced;
  /// WDAC is enabled by default and limits the applications and the code that you can run on your Azure Stack HCI cluster.
  final pulumi.Input<bool?>? wdacEnforced;

  /// Creates a new [DeploymentSecuritySettingsResponse].
  /// [bitlockerBootVolume] When set to true, BitLocker XTS_AES 256-bit encryption is enabled for all data-at-rest on the OS volume of your Azure Stack HCI cluster. This setting is TPM-hardware dependent.
  /// [bitlockerDataVolumes] When set to true, BitLocker XTS-AES 256-bit encryption is enabled for all data-at-rest on your Azure Stack HCI cluster shared volumes.
  /// [credentialGuardEnforced] When set to true, Credential Guard is enabled.
  /// [driftControlEnforced] When set to true, the security baseline is re-applied regularly.
  /// [drtmProtection] By default, Secure Boot is enabled on your Azure HCI cluster. This setting is hardware dependent.
  /// [hvciProtection] By default, Hypervisor-protected Code Integrity is enabled on your Azure HCI cluster.
  /// [sideChannelMitigationEnforced] When set to true, all the side channel mitigations are enabled
  /// [smbClusterEncryption] When set to true, cluster east-west traffic is encrypted.
  /// [smbSigningEnforced] When set to true, the SMB default instance requires sign in for the client and server services.
  /// [wdacEnforced] WDAC is enabled by default and limits the applications and the code that you can run on your Azure Stack HCI cluster.
  DeploymentSecuritySettingsResponse({
    pulumi.Input<bool?>? bitlockerBootVolume,
    pulumi.Input<bool?>? bitlockerDataVolumes,
    pulumi.Input<bool?>? credentialGuardEnforced,
    pulumi.Input<bool?>? driftControlEnforced,
    pulumi.Input<bool?>? drtmProtection,
    pulumi.Input<bool?>? hvciProtection,
    pulumi.Input<bool?>? sideChannelMitigationEnforced,
    pulumi.Input<bool?>? smbClusterEncryption,
    pulumi.Input<bool?>? smbSigningEnforced,
    pulumi.Input<bool?>? wdacEnforced,
  }) : bitlockerBootVolume = bitlockerBootVolume ?? pulumi.Input.fromValue(true), bitlockerDataVolumes = bitlockerDataVolumes ?? pulumi.Input.fromValue(true), credentialGuardEnforced = credentialGuardEnforced ?? pulumi.Input.fromValue(false), driftControlEnforced = driftControlEnforced ?? pulumi.Input.fromValue(true), drtmProtection = drtmProtection ?? pulumi.Input.fromValue(true), hvciProtection = hvciProtection ?? pulumi.Input.fromValue(true), sideChannelMitigationEnforced = sideChannelMitigationEnforced ?? pulumi.Input.fromValue(true), smbClusterEncryption = smbClusterEncryption ?? pulumi.Input.fromValue(false), smbSigningEnforced = smbSigningEnforced ?? pulumi.Input.fromValue(true), wdacEnforced = wdacEnforced ?? pulumi.Input.fromValue(true);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitlockerBootVolume': ?bitlockerBootVolume,
      'bitlockerDataVolumes': ?bitlockerDataVolumes,
      'credentialGuardEnforced': ?credentialGuardEnforced,
      'driftControlEnforced': ?driftControlEnforced,
      'drtmProtection': ?drtmProtection,
      'hvciProtection': ?hvciProtection,
      'sideChannelMitigationEnforced': ?sideChannelMitigationEnforced,
      'smbClusterEncryption': ?smbClusterEncryption,
      'smbSigningEnforced': ?smbSigningEnforced,
      'wdacEnforced': ?wdacEnforced,
    };
  }

  factory DeploymentSecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentSecuritySettingsResponse(
      bitlockerBootVolume: (() { final guardedValue = map['bitlockerBootVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bitlockerDataVolumes: (() { final guardedValue = map['bitlockerDataVolumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      credentialGuardEnforced: (() { final guardedValue = map['credentialGuardEnforced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      driftControlEnforced: (() { final guardedValue = map['driftControlEnforced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      drtmProtection: (() { final guardedValue = map['drtmProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hvciProtection: (() { final guardedValue = map['hvciProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sideChannelMitigationEnforced: (() { final guardedValue = map['sideChannelMitigationEnforced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbClusterEncryption: (() { final guardedValue = map['smbClusterEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbSigningEnforced: (() { final guardedValue = map['smbSigningEnforced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      wdacEnforced: (() { final guardedValue = map['wdacEnforced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
