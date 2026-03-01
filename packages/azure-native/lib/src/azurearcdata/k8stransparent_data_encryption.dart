// ignore_for_file: unused_element, unnecessary_cast


/// Transparent data encryption information.
class K8stransparentDataEncryption {
  /// Transparent data encryption mode. Can be Service Managed, Customer managed or disabled
  final String? mode;
  /// Protector secret for customer managed Transparent data encryption mode
  final String? protectorSecret;

  /// Creates a new [K8stransparentDataEncryption].
  /// [mode] Transparent data encryption mode. Can be Service Managed, Customer managed or disabled
  /// [protectorSecret] Protector secret for customer managed Transparent data encryption mode
  K8stransparentDataEncryption({
    this.mode,
    this.protectorSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'protectorSecret': ?protectorSecret,
    };
  }

  factory K8stransparentDataEncryption.fromMap(Map<String, dynamic> map) {
    return K8stransparentDataEncryption(
      mode: map['mode'] == null ? null : map['mode'] as String,
      protectorSecret: map['protectorSecret'] == null ? null : map['protectorSecret'] as String,
    );
  }
}

