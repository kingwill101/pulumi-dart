// ignore_for_file: unused_element, unnecessary_cast


class GetVolumeGroupSapHanaVolumeExportPolicyRule {
  /// A list of allowed clients IPv4 addresses.
  final String allowedClients;
  /// Is the NFSv3 protocol enabled?
  final bool nfsv3Enabled;
  /// Is the NFSv4.1 enabled?
  final bool nfsv41Enabled;
  /// Is root access permitted to this volume?
  final bool rootAccessEnabled;
  /// The index number of the rule.
  final int ruleIndex;
  /// Is the file system on unix read only?.
  final bool unixReadOnly;
  /// Is the file system on unix read and write?.
  final bool unixReadWrite;

  /// Creates a new [GetVolumeGroupSapHanaVolumeExportPolicyRule].
  /// [allowedClients] A list of allowed clients IPv4 addresses.
  /// [nfsv3Enabled] Is the NFSv3 protocol enabled?
  /// [nfsv41Enabled] Is the NFSv4.1 enabled?
  /// [rootAccessEnabled] Is root access permitted to this volume?
  /// [ruleIndex] The index number of the rule.
  /// [unixReadOnly] Is the file system on unix read only?.
  /// [unixReadWrite] Is the file system on unix read and write?.
  GetVolumeGroupSapHanaVolumeExportPolicyRule({
    required this.allowedClients,
    required this.nfsv3Enabled,
    required this.nfsv41Enabled,
    required this.rootAccessEnabled,
    required this.ruleIndex,
    required this.unixReadOnly,
    required this.unixReadWrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClients': allowedClients,
      'nfsv3Enabled': nfsv3Enabled,
      'nfsv41Enabled': nfsv41Enabled,
      'rootAccessEnabled': rootAccessEnabled,
      'ruleIndex': ruleIndex,
      'unixReadOnly': unixReadOnly,
      'unixReadWrite': unixReadWrite,
    };
  }

  factory GetVolumeGroupSapHanaVolumeExportPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupSapHanaVolumeExportPolicyRule(
      allowedClients: map['allowedClients'] as String,
      nfsv3Enabled: map['nfsv3Enabled'] as bool,
      nfsv41Enabled: map['nfsv41Enabled'] as bool,
      rootAccessEnabled: map['rootAccessEnabled'] as bool,
      ruleIndex: map['ruleIndex'] as int,
      unixReadOnly: map['unixReadOnly'] as bool,
      unixReadWrite: map['unixReadWrite'] as bool,
    );
  }
}

