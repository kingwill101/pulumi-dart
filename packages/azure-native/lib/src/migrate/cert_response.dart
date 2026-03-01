// ignore_for_file: unused_element, unnecessary_cast


/// WebApplication certificate.
class CertResponse {
  /// Gets or sets the Certificate data.
  final String? certData;
  /// Gets or sets a value indicating whether certificate is needed or not.
  final bool? certNeeded;
  /// Gets or sets a value indicating whether certificate is provided or not.
  final bool? certProvided;
  /// Gets or sets the type of secret store for the certificate.
  final String? secretStore;

  /// Creates a new [CertResponse].
  /// [certData] Gets or sets the Certificate data.
  /// [certNeeded] Gets or sets a value indicating whether certificate is needed or not.
  /// [certProvided] Gets or sets a value indicating whether certificate is provided or not.
  /// [secretStore] Gets or sets the type of secret store for the certificate.
  CertResponse({
    this.certData,
    this.certNeeded,
    this.certProvided,
    this.secretStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certData': ?certData,
      'certNeeded': ?certNeeded,
      'certProvided': ?certProvided,
      'secretStore': ?secretStore,
    };
  }

  factory CertResponse.fromMap(Map<String, dynamic> map) {
    return CertResponse(
      certData: map['certData'] == null ? null : map['certData'] as String,
      certNeeded: map['certNeeded'] == null ? null : map['certNeeded'] as bool,
      certProvided: map['certProvided'] == null ? null : map['certProvided'] as bool,
      secretStore: map['secretStore'] == null ? null : map['secretStore'] as String,
    );
  }
}

