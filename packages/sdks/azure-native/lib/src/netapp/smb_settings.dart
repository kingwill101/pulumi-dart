// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SMB settings for the cache
class SmbSettings {
  /// Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final pulumi.Input<dynamic>? smbAccessBasedEnumeration;
  /// Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol cache.
  final pulumi.Input<dynamic>? smbEncryption;
  /// Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final pulumi.Input<dynamic>? smbNonBrowsable;

  /// Creates a new [SmbSettings].
  /// [smbAccessBasedEnumeration] Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  /// [smbEncryption] Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol cache.
  /// [smbNonBrowsable] Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  const SmbSettings({
    this.smbAccessBasedEnumeration,
    this.smbEncryption,
    this.smbNonBrowsable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'smbAccessBasedEnumeration': ?smbAccessBasedEnumeration,
      'smbEncryption': ?smbEncryption,
      'smbNonBrowsable': ?smbNonBrowsable,
    };
  }

  factory SmbSettings.fromMap(Map<String, dynamic> map) {
    return SmbSettings(
      smbAccessBasedEnumeration: (() { final guardedValue = map['smbAccessBasedEnumeration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      smbEncryption: (() { final guardedValue = map['smbEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      smbNonBrowsable: (() { final guardedValue = map['smbNonBrowsable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
