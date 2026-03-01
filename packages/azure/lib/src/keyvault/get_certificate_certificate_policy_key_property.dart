// ignore_for_file: unused_element, unnecessary_cast


class GetCertificateCertificatePolicyKeyProperty {
  final String curve;
  /// Is this Certificate Exportable?
  final bool exportable;
  /// The size of the Key used in the Certificate.
  final int keySize;
  /// Specifies the Type of Key, for example `RSA`.
  final String keyType;
  /// Is the key reusable?
  final bool reuseKey;

  /// Creates a new [GetCertificateCertificatePolicyKeyProperty].
  /// [curve] Required.
  /// [exportable] Is this Certificate Exportable?
  /// [keySize] The size of the Key used in the Certificate.
  /// [keyType] Specifies the Type of Key, for example `RSA`.
  /// [reuseKey] Is the key reusable?
  GetCertificateCertificatePolicyKeyProperty({
    required this.curve,
    required this.exportable,
    required this.keySize,
    required this.keyType,
    required this.reuseKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': curve,
      'exportable': exportable,
      'keySize': keySize,
      'keyType': keyType,
      'reuseKey': reuseKey,
    };
  }

  factory GetCertificateCertificatePolicyKeyProperty.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicyKeyProperty(
      curve: map['curve'] as String,
      exportable: map['exportable'] as bool,
      keySize: map['keySize'] as int,
      keyType: map['keyType'] as String,
      reuseKey: map['reuseKey'] as bool,
    );
  }
}

