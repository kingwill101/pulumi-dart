// ignore_for_file: unused_element, unnecessary_cast

class CryptoKeyVersionTemplate {
  /// The algorithm to use when creating a version based on this template.
  /// See the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs.
  final String algorithm;

  /// The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  final String? protectionLevel;

  /// Creates a new [CryptoKeyVersionTemplate].
  /// [algorithm] The algorithm to use when creating a version based on this template.
  /// [protectionLevel] The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  CryptoKeyVersionTemplate({
    required this.algorithm,
    this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    final protectionLevelValue = protectionLevel;
    if (protectionLevelValue != null) {
      map['protectionLevel'] = protectionLevelValue;
    }
    return map;
  }

  factory CryptoKeyVersionTemplate.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionTemplate(
      algorithm: map['algorithm'] as String,
      protectionLevel: map['protectionLevel'] == null
          ? null
          : map['protectionLevel'] as String,
    );
  }
}
