// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the creation time.
  final String creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets the expiry time of the certificate.
  final String expiryTime;
  /// Fully qualified resource Id for the resource
  final String id;
  /// Gets the is exportable flag of the certificate.
  final bool isExportable;
  /// Gets the last modified time.
  final String lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Gets the thumbprint of the certificate.
  final String thumbprint;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets the creation time.
  /// [description] Gets or sets the description.
  /// [expiryTime] Gets the expiry time of the certificate.
  /// [id] Fully qualified resource Id for the resource
  /// [isExportable] Gets the is exportable flag of the certificate.
  /// [lastModifiedTime] Gets the last modified time.
  /// [name] The name of the resource
  /// [thumbprint] Gets the thumbprint of the certificate.
  /// [type] The type of the resource.
  GetCertificateResult({
    required this.azureApiVersion,
    required this.creationTime,
    this.description,
    required this.expiryTime,
    required this.id,
    required this.isExportable,
    required this.lastModifiedTime,
    required this.name,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'description': ?description,
      'expiryTime': expiryTime,
      'id': id,
      'isExportable': isExportable,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryTime: map['expiryTime'] as String,
      id: map['id'] as String,
      isExportable: map['isExportable'] as bool,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}

