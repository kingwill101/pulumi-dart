// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SMB settings for the cache
class SmbSettingsResponse {
  /// Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final pulumi.Input<String>? smbAccessBasedEnumeration;
  /// Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol cache.
  final pulumi.Input<String>? smbEncryption;
  /// Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final pulumi.Input<String>? smbNonBrowsable;

  /// Creates a new [SmbSettingsResponse].
  /// [smbAccessBasedEnumeration] Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  /// [smbEncryption] Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol cache.
  /// [smbNonBrowsable] Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  const SmbSettingsResponse({
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

  factory SmbSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SmbSettingsResponse(
      smbAccessBasedEnumeration: (() { final guardedValue = map['smbAccessBasedEnumeration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smbEncryption: (() { final guardedValue = map['smbEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smbNonBrowsable: (() { final guardedValue = map['smbNonBrowsable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

