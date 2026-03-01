// ignore_for_file: unused_element, unnecessary_cast


/// SMB settings for the cache
class SmbSettings {
  /// Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final String? smbAccessBasedEnumeration;
  /// Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol cache.
  final String? smbEncryption;
  /// Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final String? smbNonBrowsable;

  /// Creates a new [SmbSettings].
  /// [smbAccessBasedEnumeration] Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  /// [smbEncryption] Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol cache.
  /// [smbNonBrowsable] Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  SmbSettings({
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
      smbAccessBasedEnumeration: map['smbAccessBasedEnumeration'] == null ? null : map['smbAccessBasedEnumeration'] as String,
      smbEncryption: map['smbEncryption'] == null ? null : map['smbEncryption'] as String,
      smbNonBrowsable: map['smbNonBrowsable'] == null ? null : map['smbNonBrowsable'] as String,
    );
  }
}

