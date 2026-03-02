// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Domain Security Settings
class DomainSecuritySettings {
  /// A flag to determine whether or not ChannelBinding is enabled or disabled.
  final pulumi.Input<String>? channelBinding;
  /// A flag to determine whether or not KerberosArmoring is enabled or disabled.
  final pulumi.Input<String>? kerberosArmoring;
  /// A flag to determine whether or not KerberosRc4Encryption is enabled or disabled.
  final pulumi.Input<String>? kerberosRc4Encryption;
  /// A flag to determine whether or not LdapSigning is enabled or disabled.
  final pulumi.Input<String>? ldapSigning;
  /// A flag to determine whether or not NtlmV1 is enabled or disabled.
  final pulumi.Input<String>? ntlmV1;
  /// A flag to determine whether or not SyncKerberosPasswords is enabled or disabled.
  final pulumi.Input<String>? syncKerberosPasswords;
  /// A flag to determine whether or not SyncNtlmPasswords is enabled or disabled.
  final pulumi.Input<String>? syncNtlmPasswords;
  /// A flag to determine whether or not SyncOnPremPasswords is enabled or disabled.
  final pulumi.Input<String>? syncOnPremPasswords;
  /// A flag to determine whether or not TlsV1 is enabled or disabled.
  final pulumi.Input<String>? tlsV1;

  /// Creates a new [DomainSecuritySettings].
  /// [channelBinding] A flag to determine whether or not ChannelBinding is enabled or disabled.
  /// [kerberosArmoring] A flag to determine whether or not KerberosArmoring is enabled or disabled.
  /// [kerberosRc4Encryption] A flag to determine whether or not KerberosRc4Encryption is enabled or disabled.
  /// [ldapSigning] A flag to determine whether or not LdapSigning is enabled or disabled.
  /// [ntlmV1] A flag to determine whether or not NtlmV1 is enabled or disabled.
  /// [syncKerberosPasswords] A flag to determine whether or not SyncKerberosPasswords is enabled or disabled.
  /// [syncNtlmPasswords] A flag to determine whether or not SyncNtlmPasswords is enabled or disabled.
  /// [syncOnPremPasswords] A flag to determine whether or not SyncOnPremPasswords is enabled or disabled.
  /// [tlsV1] A flag to determine whether or not TlsV1 is enabled or disabled.
  DomainSecuritySettings({
    this.channelBinding,
    this.kerberosArmoring,
    this.kerberosRc4Encryption,
    this.ldapSigning,
    this.ntlmV1,
    this.syncKerberosPasswords,
    this.syncNtlmPasswords,
    this.syncOnPremPasswords,
    this.tlsV1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelBinding': ?channelBinding,
      'kerberosArmoring': ?kerberosArmoring,
      'kerberosRc4Encryption': ?kerberosRc4Encryption,
      'ldapSigning': ?ldapSigning,
      'ntlmV1': ?ntlmV1,
      'syncKerberosPasswords': ?syncKerberosPasswords,
      'syncNtlmPasswords': ?syncNtlmPasswords,
      'syncOnPremPasswords': ?syncOnPremPasswords,
      'tlsV1': ?tlsV1,
    };
  }

  factory DomainSecuritySettings.fromMap(Map<String, dynamic> map) {
    return DomainSecuritySettings(
      channelBinding: map['channelBinding'] == null ? null : (map['channelBinding'] as String).input(),
      kerberosArmoring: map['kerberosArmoring'] == null ? null : (map['kerberosArmoring'] as String).input(),
      kerberosRc4Encryption: map['kerberosRc4Encryption'] == null ? null : (map['kerberosRc4Encryption'] as String).input(),
      ldapSigning: map['ldapSigning'] == null ? null : (map['ldapSigning'] as String).input(),
      ntlmV1: map['ntlmV1'] == null ? null : (map['ntlmV1'] as String).input(),
      syncKerberosPasswords: map['syncKerberosPasswords'] == null ? null : (map['syncKerberosPasswords'] as String).input(),
      syncNtlmPasswords: map['syncNtlmPasswords'] == null ? null : (map['syncNtlmPasswords'] as String).input(),
      syncOnPremPasswords: map['syncOnPremPasswords'] == null ? null : (map['syncOnPremPasswords'] as String).input(),
      tlsV1: map['tlsV1'] == null ? null : (map['tlsV1'] as String).input(),
    );
  }
}

