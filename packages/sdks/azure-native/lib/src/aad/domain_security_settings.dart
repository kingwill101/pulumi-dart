// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Domain Security Settings
class DomainSecuritySettings {
  /// A flag to determine whether or not ChannelBinding is enabled or disabled.
  final pulumi.Input<dynamic>? channelBinding;
  /// A flag to determine whether or not KerberosArmoring is enabled or disabled.
  final pulumi.Input<dynamic>? kerberosArmoring;
  /// A flag to determine whether or not KerberosRc4Encryption is enabled or disabled.
  final pulumi.Input<dynamic>? kerberosRc4Encryption;
  /// A flag to determine whether or not LdapSigning is enabled or disabled.
  final pulumi.Input<dynamic>? ldapSigning;
  /// A flag to determine whether or not NtlmV1 is enabled or disabled.
  final pulumi.Input<dynamic>? ntlmV1;
  /// A flag to determine whether or not SyncKerberosPasswords is enabled or disabled.
  final pulumi.Input<dynamic>? syncKerberosPasswords;
  /// A flag to determine whether or not SyncNtlmPasswords is enabled or disabled.
  final pulumi.Input<dynamic>? syncNtlmPasswords;
  /// A flag to determine whether or not SyncOnPremPasswords is enabled or disabled.
  final pulumi.Input<dynamic>? syncOnPremPasswords;
  /// A flag to determine whether or not TlsV1 is enabled or disabled.
  final pulumi.Input<dynamic>? tlsV1;

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
    pulumi.Input<dynamic>? channelBinding,
    pulumi.Input<dynamic>? kerberosArmoring,
    pulumi.Input<dynamic>? kerberosRc4Encryption,
    pulumi.Input<dynamic>? ldapSigning,
    pulumi.Input<dynamic>? ntlmV1,
    pulumi.Input<dynamic>? syncKerberosPasswords,
    pulumi.Input<dynamic>? syncNtlmPasswords,
    pulumi.Input<dynamic>? syncOnPremPasswords,
    pulumi.Input<dynamic>? tlsV1,
  }) : channelBinding = channelBinding ?? pulumi.Input.fromValue('Disabled'), kerberosArmoring = kerberosArmoring ?? pulumi.Input.fromValue('Disabled'), kerberosRc4Encryption = kerberosRc4Encryption ?? pulumi.Input.fromValue('Enabled'), ldapSigning = ldapSigning ?? pulumi.Input.fromValue('Disabled'), ntlmV1 = ntlmV1 ?? pulumi.Input.fromValue('Enabled'), syncKerberosPasswords = syncKerberosPasswords ?? pulumi.Input.fromValue('Enabled'), syncNtlmPasswords = syncNtlmPasswords ?? pulumi.Input.fromValue('Enabled'), syncOnPremPasswords = syncOnPremPasswords ?? pulumi.Input.fromValue('Enabled'), tlsV1 = tlsV1 ?? pulumi.Input.fromValue('Enabled');

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
      channelBinding: (() { final guardedValue = map['channelBinding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      kerberosArmoring: (() { final guardedValue = map['kerberosArmoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      kerberosRc4Encryption: (() { final guardedValue = map['kerberosRc4Encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ldapSigning: (() { final guardedValue = map['ldapSigning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ntlmV1: (() { final guardedValue = map['ntlmV1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      syncKerberosPasswords: (() { final guardedValue = map['syncKerberosPasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      syncNtlmPasswords: (() { final guardedValue = map['syncNtlmPasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      syncOnPremPasswords: (() { final guardedValue = map['syncOnPremPasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tlsV1: (() { final guardedValue = map['tlsV1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
