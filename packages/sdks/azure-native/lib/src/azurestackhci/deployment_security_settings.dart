// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SecuritySettings of AzureStackHCI Cluster.
class DeploymentSecuritySettings {
  /// When set to true, BitLocker XTS_AES 256-bit encryption is enabled for all data-at-rest on the OS volume of your Azure Stack HCI cluster. This setting is TPM-hardware dependent.
  final pulumi.Input<bool>? bitlockerBootVolume;
  /// When set to true, BitLocker XTS-AES 256-bit encryption is enabled for all data-at-rest on your Azure Stack HCI cluster shared volumes.
  final pulumi.Input<bool>? bitlockerDataVolumes;
  /// When set to true, Credential Guard is enabled.
  final pulumi.Input<bool>? credentialGuardEnforced;
  /// When set to true, the security baseline is re-applied regularly.
  final pulumi.Input<bool>? driftControlEnforced;
  /// By default, Secure Boot is enabled on your Azure HCI cluster. This setting is hardware dependent.
  final pulumi.Input<bool>? drtmProtection;
  /// By default, Hypervisor-protected Code Integrity is enabled on your Azure HCI cluster.
  final pulumi.Input<bool>? hvciProtection;
  /// When set to true, all the side channel mitigations are enabled
  final pulumi.Input<bool>? sideChannelMitigationEnforced;
  /// When set to true, cluster east-west traffic is encrypted.
  final pulumi.Input<bool>? smbClusterEncryption;
  /// When set to true, the SMB default instance requires sign in for the client and server services.
  final pulumi.Input<bool>? smbSigningEnforced;
  /// WDAC is enabled by default and limits the applications and the code that you can run on your Azure Stack HCI cluster.
  final pulumi.Input<bool>? wdacEnforced;

  /// Creates a new [DeploymentSecuritySettings].
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
  DeploymentSecuritySettings({
    this.bitlockerBootVolume,
    this.bitlockerDataVolumes,
    this.credentialGuardEnforced,
    this.driftControlEnforced,
    this.drtmProtection,
    this.hvciProtection,
    this.sideChannelMitigationEnforced,
    this.smbClusterEncryption,
    this.smbSigningEnforced,
    this.wdacEnforced,
  });

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

  factory DeploymentSecuritySettings.fromMap(Map<String, dynamic> map) {
    return DeploymentSecuritySettings(
      bitlockerBootVolume: map['bitlockerBootVolume'] == null ? null : (map['bitlockerBootVolume']! as bool).input(),
      bitlockerDataVolumes: map['bitlockerDataVolumes'] == null ? null : (map['bitlockerDataVolumes']! as bool).input(),
      credentialGuardEnforced: map['credentialGuardEnforced'] == null ? null : (map['credentialGuardEnforced']! as bool).input(),
      driftControlEnforced: map['driftControlEnforced'] == null ? null : (map['driftControlEnforced']! as bool).input(),
      drtmProtection: map['drtmProtection'] == null ? null : (map['drtmProtection']! as bool).input(),
      hvciProtection: map['hvciProtection'] == null ? null : (map['hvciProtection']! as bool).input(),
      sideChannelMitigationEnforced: map['sideChannelMitigationEnforced'] == null ? null : (map['sideChannelMitigationEnforced']! as bool).input(),
      smbClusterEncryption: map['smbClusterEncryption'] == null ? null : (map['smbClusterEncryption']! as bool).input(),
      smbSigningEnforced: map['smbSigningEnforced'] == null ? null : (map['smbSigningEnforced']! as bool).input(),
      wdacEnforced: map['wdacEnforced'] == null ? null : (map['wdacEnforced']! as bool).input(),
    );
  }
}

