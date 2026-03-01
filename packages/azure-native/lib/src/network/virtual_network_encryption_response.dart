// ignore_for_file: unused_element, unnecessary_cast


/// Indicates if encryption is enabled on virtual network and if VM without encryption is allowed in encrypted VNet.
class VirtualNetworkEncryptionResponse {
  /// Indicates if encryption is enabled on the virtual network.
  final bool enabled;
  /// If the encrypted VNet allows VM that does not support encryption. This field is for future support, AllowUnencrypted is the only supported value at general availability.
  final String? enforcement;

  /// Creates a new [VirtualNetworkEncryptionResponse].
  /// [enabled] Indicates if encryption is enabled on the virtual network.
  /// [enforcement] If the encrypted VNet allows VM that does not support encryption. This field is for future support, AllowUnencrypted is the only supported value at general availability.
  VirtualNetworkEncryptionResponse({
    required this.enabled,
    this.enforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'enforcement': ?enforcement,
    };
  }

  factory VirtualNetworkEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkEncryptionResponse(
      enabled: map['enabled'] as bool,
      enforcement: map['enforcement'] == null ? null : map['enforcement'] as String,
    );
  }
}

