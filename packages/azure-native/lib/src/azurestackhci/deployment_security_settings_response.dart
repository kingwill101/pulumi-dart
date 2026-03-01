// ignore_for_file: unused_element, unnecessary_cast


/// The SecuritySettings of AzureStackHCI Cluster.
class DeploymentSecuritySettingsResponse {
  /// When set to true, BitLocker XTS_AES 256-bit encryption is enabled for all data-at-rest on the OS volume of your Azure Stack HCI cluster. This setting is TPM-hardware dependent.
  final bool? bitlockerBootVolume;
  /// When set to true, BitLocker XTS-AES 256-bit encryption is enabled for all data-at-rest on your Azure Stack HCI cluster shared volumes.
  final bool? bitlockerDataVolumes;
  /// When set to true, Credential Guard is enabled.
  final bool? credentialGuardEnforced;
  /// When set to true, the security baseline is re-applied regularly.
  final bool? driftControlEnforced;
  /// By default, Secure Boot is enabled on your Azure HCI cluster. This setting is hardware dependent.
  final bool? drtmProtection;
  /// By default, Hypervisor-protected Code Integrity is enabled on your Azure HCI cluster.
  final bool? hvciProtection;
  /// When set to true, all the side channel mitigations are enabled
  final bool? sideChannelMitigationEnforced;
  /// When set to true, cluster east-west traffic is encrypted.
  final bool? smbClusterEncryption;
  /// When set to true, the SMB default instance requires sign in for the client and server services.
  final bool? smbSigningEnforced;
  /// WDAC is enabled by default and limits the applications and the code that you can run on your Azure Stack HCI cluster.
  final bool? wdacEnforced;

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

  factory DeploymentSecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentSecuritySettingsResponse(
      bitlockerBootVolume: map['bitlockerBootVolume'] == null ? null : map['bitlockerBootVolume'] as bool,
      bitlockerDataVolumes: map['bitlockerDataVolumes'] == null ? null : map['bitlockerDataVolumes'] as bool,
      credentialGuardEnforced: map['credentialGuardEnforced'] == null ? null : map['credentialGuardEnforced'] as bool,
      driftControlEnforced: map['driftControlEnforced'] == null ? null : map['driftControlEnforced'] as bool,
      drtmProtection: map['drtmProtection'] == null ? null : map['drtmProtection'] as bool,
      hvciProtection: map['hvciProtection'] == null ? null : map['hvciProtection'] as bool,
      sideChannelMitigationEnforced: map['sideChannelMitigationEnforced'] == null ? null : map['sideChannelMitigationEnforced'] as bool,
      smbClusterEncryption: map['smbClusterEncryption'] == null ? null : map['smbClusterEncryption'] as bool,
      smbSigningEnforced: map['smbSigningEnforced'] == null ? null : map['smbSigningEnforced'] as bool,
      wdacEnforced: map['wdacEnforced'] == null ? null : map['wdacEnforced'] as bool,
    );
  }
}

