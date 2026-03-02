// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume Export Policy Rule
class ExportPolicyRuleResponse {
  /// Client ingress specification as comma separated string with IPv4 CIDRs, IPv4 host addresses and host names
  final pulumi.Input<String>? allowedClients;
  /// This parameter specifies who is authorized to change the ownership of a file. restricted - Only root user can change the ownership of the file. unrestricted - Non-root users can change ownership of files that they own.
  final pulumi.Input<String>? chownMode;
  /// Allows CIFS protocol
  final pulumi.Input<bool>? cifs;
  /// Has root access to volume
  final pulumi.Input<bool>? hasRootAccess;
  /// Kerberos5i Read only access. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberos5IReadOnly;
  /// Kerberos5i Read and write access. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberos5IReadWrite;
  /// Kerberos5p Read only access. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberos5PReadOnly;
  /// Kerberos5p Read and write access. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberos5PReadWrite;
  /// Kerberos5 Read only access. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberos5ReadOnly;
  /// Kerberos5 Read and write access. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberos5ReadWrite;
  /// Kerberos5i Read only access. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberos5iReadOnly;
  /// Kerberos5i Read and write access. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberos5iReadWrite;
  /// Kerberos5p Read only access. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberos5pReadOnly;
  /// Kerberos5p Read and write access. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberos5pReadWrite;
  /// Allows NFSv3 protocol. Enable only for NFSv3 type volumes
  final pulumi.Input<bool>? nfsv3;
  /// Allows NFSv4.1 protocol. Enable only for NFSv4.1 type volumes
  final pulumi.Input<bool>? nfsv41;
  /// Order index
  final pulumi.Input<int>? ruleIndex;
  /// Read only access
  final pulumi.Input<bool>? unixReadOnly;
  /// Read and write access
  final pulumi.Input<bool>? unixReadWrite;

  /// Creates a new [ExportPolicyRuleResponse].
  /// [allowedClients] Client ingress specification as comma separated string with IPv4 CIDRs, IPv4 host addresses and host names
  /// [chownMode] This parameter specifies who is authorized to change the ownership of a file. restricted - Only root user can change the ownership of the file. unrestricted - Non-root users can change ownership of files that they own.
  /// [cifs] Allows CIFS protocol
  /// [hasRootAccess] Has root access to volume
  /// [kerberos5IReadOnly] Kerberos5i Read only access. To be use with swagger version 2020-05-01 or later
  /// [kerberos5IReadWrite] Kerberos5i Read and write access. To be use with swagger version 2020-05-01 or later
  /// [kerberos5PReadOnly] Kerberos5p Read only access. To be use with swagger version 2020-05-01 or later
  /// [kerberos5PReadWrite] Kerberos5p Read and write access. To be use with swagger version 2020-05-01 or later
  /// [kerberos5ReadOnly] Kerberos5 Read only access. To be use with swagger version 2020-05-01 or later
  /// [kerberos5ReadWrite] Kerberos5 Read and write access. To be use with swagger version 2020-05-01 or later
  /// [kerberos5iReadOnly] Kerberos5i Read only access. To be use with swagger version 2020-05-01 or later
  /// [kerberos5iReadWrite] Kerberos5i Read and write access. To be use with swagger version 2020-05-01 or later
  /// [kerberos5pReadOnly] Kerberos5p Read only access. To be use with swagger version 2020-05-01 or later
  /// [kerberos5pReadWrite] Kerberos5p Read and write access. To be use with swagger version 2020-05-01 or later
  /// [nfsv3] Allows NFSv3 protocol. Enable only for NFSv3 type volumes
  /// [nfsv41] Allows NFSv4.1 protocol. Enable only for NFSv4.1 type volumes
  /// [ruleIndex] Order index
  /// [unixReadOnly] Read only access
  /// [unixReadWrite] Read and write access
  ExportPolicyRuleResponse({
    this.allowedClients,
    this.chownMode,
    this.cifs,
    this.hasRootAccess,
    this.kerberos5IReadOnly,
    this.kerberos5IReadWrite,
    this.kerberos5PReadOnly,
    this.kerberos5PReadWrite,
    this.kerberos5ReadOnly,
    this.kerberos5ReadWrite,
    this.kerberos5iReadOnly,
    this.kerberos5iReadWrite,
    this.kerberos5pReadOnly,
    this.kerberos5pReadWrite,
    this.nfsv3,
    this.nfsv41,
    this.ruleIndex,
    this.unixReadOnly,
    this.unixReadWrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClients': ?allowedClients,
      'chownMode': ?chownMode,
      'cifs': ?cifs,
      'hasRootAccess': ?hasRootAccess,
      'kerberos5IReadOnly': ?kerberos5IReadOnly,
      'kerberos5IReadWrite': ?kerberos5IReadWrite,
      'kerberos5PReadOnly': ?kerberos5PReadOnly,
      'kerberos5PReadWrite': ?kerberos5PReadWrite,
      'kerberos5ReadOnly': ?kerberos5ReadOnly,
      'kerberos5ReadWrite': ?kerberos5ReadWrite,
      'kerberos5iReadOnly': ?kerberos5iReadOnly,
      'kerberos5iReadWrite': ?kerberos5iReadWrite,
      'kerberos5pReadOnly': ?kerberos5pReadOnly,
      'kerberos5pReadWrite': ?kerberos5pReadWrite,
      'nfsv3': ?nfsv3,
      'nfsv41': ?nfsv41,
      'ruleIndex': ?ruleIndex,
      'unixReadOnly': ?unixReadOnly,
      'unixReadWrite': ?unixReadWrite,
    };
  }

  factory ExportPolicyRuleResponse.fromMap(Map<String, dynamic> map) {
    return ExportPolicyRuleResponse(
      allowedClients: map['allowedClients'] == null ? null : (map['allowedClients']! as String).input(),
      chownMode: map['chownMode'] == null ? null : (map['chownMode']! as String).input(),
      cifs: map['cifs'] == null ? null : (map['cifs']! as bool).input(),
      hasRootAccess: map['hasRootAccess'] == null ? null : (map['hasRootAccess']! as bool).input(),
      kerberos5IReadOnly: map['kerberos5IReadOnly'] == null ? null : (map['kerberos5IReadOnly']! as bool).input(),
      kerberos5IReadWrite: map['kerberos5IReadWrite'] == null ? null : (map['kerberos5IReadWrite']! as bool).input(),
      kerberos5PReadOnly: map['kerberos5PReadOnly'] == null ? null : (map['kerberos5PReadOnly']! as bool).input(),
      kerberos5PReadWrite: map['kerberos5PReadWrite'] == null ? null : (map['kerberos5PReadWrite']! as bool).input(),
      kerberos5ReadOnly: map['kerberos5ReadOnly'] == null ? null : (map['kerberos5ReadOnly']! as bool).input(),
      kerberos5ReadWrite: map['kerberos5ReadWrite'] == null ? null : (map['kerberos5ReadWrite']! as bool).input(),
      kerberos5iReadOnly: map['kerberos5iReadOnly'] == null ? null : (map['kerberos5iReadOnly']! as bool).input(),
      kerberos5iReadWrite: map['kerberos5iReadWrite'] == null ? null : (map['kerberos5iReadWrite']! as bool).input(),
      kerberos5pReadOnly: map['kerberos5pReadOnly'] == null ? null : (map['kerberos5pReadOnly']! as bool).input(),
      kerberos5pReadWrite: map['kerberos5pReadWrite'] == null ? null : (map['kerberos5pReadWrite']! as bool).input(),
      nfsv3: map['nfsv3'] == null ? null : (map['nfsv3']! as bool).input(),
      nfsv41: map['nfsv41'] == null ? null : (map['nfsv41']! as bool).input(),
      ruleIndex: map['ruleIndex'] == null ? null : (map['ruleIndex']! as int).input(),
      unixReadOnly: map['unixReadOnly'] == null ? null : (map['unixReadOnly']! as bool).input(),
      unixReadWrite: map['unixReadWrite'] == null ? null : (map['unixReadWrite']! as bool).input(),
    );
  }
}

