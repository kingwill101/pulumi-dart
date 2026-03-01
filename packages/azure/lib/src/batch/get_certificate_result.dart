// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  final String accountName;
  /// The format of the certificate, such as `Cer` or `Pfx`.
  final String format;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The public key of the certificate.
  final String publicData;
  final String resourceGroupName;
  /// The thumbprint of the certificate.
  final String thumbprint;
  /// The algorithm of the certificate thumbprint.
  final String thumbprintAlgorithm;

  /// Creates a new [GetCertificateResult].
  /// [accountName] Required.
  /// [format] The format of the certificate, such as `Cer` or `Pfx`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [publicData] The public key of the certificate.
  /// [resourceGroupName] Required.
  /// [thumbprint] The thumbprint of the certificate.
  /// [thumbprintAlgorithm] The algorithm of the certificate thumbprint.
  GetCertificateResult({
    required this.accountName,
    required this.format,
    required this.id,
    required this.name,
    required this.publicData,
    required this.resourceGroupName,
    required this.thumbprint,
    required this.thumbprintAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'format': format,
      'id': id,
      'name': name,
      'publicData': publicData,
      'resourceGroupName': resourceGroupName,
      'thumbprint': thumbprint,
      'thumbprintAlgorithm': thumbprintAlgorithm,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      accountName: map['accountName'] as String,
      format: map['format'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      publicData: map['publicData'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      thumbprint: map['thumbprint'] as String,
      thumbprintAlgorithm: map['thumbprintAlgorithm'] as String,
    );
  }
}

