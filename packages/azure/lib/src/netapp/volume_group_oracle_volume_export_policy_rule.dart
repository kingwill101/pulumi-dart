// ignore_for_file: unused_element, unnecessary_cast


class VolumeGroupOracleVolumeExportPolicyRule {
  /// A comma-sperated list of allowed client IPv4 addresses.
  final String allowedClients;
  /// Enables NFSv3. Please note that this cannot be enabled if volume has NFSv4.1 as its protocol.
  final bool nfsv3Enabled;
  /// Enables NFSv4.1. Please note that this cannot be enabled if volume has NFSv3 as its protocol.
  final bool nfsv41Enabled;
  /// Is root access permitted to this volume? Defaults to `true`.
  final bool? rootAccessEnabled;
  /// The index number of the rule, must start at 1 and maximum 5.
  final int ruleIndex;
  /// Is the file system on unix read only? Defaults to `false.
  final bool? unixReadOnly;
  /// Is the file system on unix read and write? Defaults to `true`.
  final bool? unixReadWrite;

  /// Creates a new [VolumeGroupOracleVolumeExportPolicyRule].
  /// [allowedClients] A comma-sperated list of allowed client IPv4 addresses.
  /// [nfsv3Enabled] Enables NFSv3. Please note that this cannot be enabled if volume has NFSv4.1 as its protocol.
  /// [nfsv41Enabled] Enables NFSv4.1. Please note that this cannot be enabled if volume has NFSv3 as its protocol.
  /// [rootAccessEnabled] Is root access permitted to this volume? Defaults to `true`.
  /// [ruleIndex] The index number of the rule, must start at 1 and maximum 5.
  /// [unixReadOnly] Is the file system on unix read only? Defaults to `false.
  /// [unixReadWrite] Is the file system on unix read and write? Defaults to `true`.
  VolumeGroupOracleVolumeExportPolicyRule({
    required this.allowedClients,
    required this.nfsv3Enabled,
    required this.nfsv41Enabled,
    this.rootAccessEnabled,
    required this.ruleIndex,
    this.unixReadOnly,
    this.unixReadWrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClients': allowedClients,
      'nfsv3Enabled': nfsv3Enabled,
      'nfsv41Enabled': nfsv41Enabled,
      'rootAccessEnabled': ?rootAccessEnabled,
      'ruleIndex': ruleIndex,
      'unixReadOnly': ?unixReadOnly,
      'unixReadWrite': ?unixReadWrite,
    };
  }

  factory VolumeGroupOracleVolumeExportPolicyRule.fromMap(Map<String, dynamic> map) {
    return VolumeGroupOracleVolumeExportPolicyRule(
      allowedClients: map['allowedClients'] as String,
      nfsv3Enabled: map['nfsv3Enabled'] as bool,
      nfsv41Enabled: map['nfsv41Enabled'] as bool,
      rootAccessEnabled: map['rootAccessEnabled'] == null ? null : map['rootAccessEnabled'] as bool,
      ruleIndex: map['ruleIndex'] as int,
      unixReadOnly: map['unixReadOnly'] == null ? null : map['unixReadOnly'] as bool,
      unixReadWrite: map['unixReadWrite'] == null ? null : map['unixReadWrite'] as bool,
    );
  }
}

