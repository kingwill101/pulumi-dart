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
  SmbSettingsResponse({
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
      smbAccessBasedEnumeration: map['smbAccessBasedEnumeration'] == null ? null : (map['smbAccessBasedEnumeration'] as String).input(),
      smbEncryption: map['smbEncryption'] == null ? null : (map['smbEncryption'] as String).input(),
      smbNonBrowsable: map['smbNonBrowsable'] == null ? null : (map['smbNonBrowsable'] as String).input(),
    );
  }
}

