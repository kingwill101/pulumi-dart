// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Domain Security Settings
class DomainSecuritySettingsResponse {
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

  /// Creates a new [DomainSecuritySettingsResponse].
  /// [channelBinding] A flag to determine whether or not ChannelBinding is enabled or disabled.
  /// [kerberosArmoring] A flag to determine whether or not KerberosArmoring is enabled or disabled.
  /// [kerberosRc4Encryption] A flag to determine whether or not KerberosRc4Encryption is enabled or disabled.
  /// [ldapSigning] A flag to determine whether or not LdapSigning is enabled or disabled.
  /// [ntlmV1] A flag to determine whether or not NtlmV1 is enabled or disabled.
  /// [syncKerberosPasswords] A flag to determine whether or not SyncKerberosPasswords is enabled or disabled.
  /// [syncNtlmPasswords] A flag to determine whether or not SyncNtlmPasswords is enabled or disabled.
  /// [syncOnPremPasswords] A flag to determine whether or not SyncOnPremPasswords is enabled or disabled.
  /// [tlsV1] A flag to determine whether or not TlsV1 is enabled or disabled.
  const DomainSecuritySettingsResponse({
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

  factory DomainSecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return DomainSecuritySettingsResponse(
      channelBinding: (() { final guardedValue = map['channelBinding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kerberosArmoring: (() { final guardedValue = map['kerberosArmoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kerberosRc4Encryption: (() { final guardedValue = map['kerberosRc4Encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ldapSigning: (() { final guardedValue = map['ldapSigning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ntlmV1: (() { final guardedValue = map['ntlmV1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncKerberosPasswords: (() { final guardedValue = map['syncKerberosPasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncNtlmPasswords: (() { final guardedValue = map['syncNtlmPasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncOnPremPasswords: (() { final guardedValue = map['syncOnPremPasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsV1: (() { final guardedValue = map['tlsV1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

