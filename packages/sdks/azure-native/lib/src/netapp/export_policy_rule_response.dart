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
  const ExportPolicyRuleResponse({
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
      allowedClients: (() { final guardedValue = map['allowedClients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chownMode: (() { final guardedValue = map['chownMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cifs: (() { final guardedValue = map['cifs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hasRootAccess: (() { final guardedValue = map['hasRootAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5IReadOnly: (() { final guardedValue = map['kerberos5IReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5IReadWrite: (() { final guardedValue = map['kerberos5IReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5PReadOnly: (() { final guardedValue = map['kerberos5PReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5PReadWrite: (() { final guardedValue = map['kerberos5PReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5ReadOnly: (() { final guardedValue = map['kerberos5ReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5ReadWrite: (() { final guardedValue = map['kerberos5ReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5iReadOnly: (() { final guardedValue = map['kerberos5iReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5iReadWrite: (() { final guardedValue = map['kerberos5iReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5pReadOnly: (() { final guardedValue = map['kerberos5pReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5pReadWrite: (() { final guardedValue = map['kerberos5pReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nfsv3: (() { final guardedValue = map['nfsv3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nfsv41: (() { final guardedValue = map['nfsv41']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ruleIndex: (() { final guardedValue = map['ruleIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      unixReadOnly: (() { final guardedValue = map['unixReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      unixReadWrite: (() { final guardedValue = map['unixReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

