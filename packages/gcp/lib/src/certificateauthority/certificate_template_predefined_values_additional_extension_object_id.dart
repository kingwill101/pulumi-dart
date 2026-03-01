// ignore_for_file: unused_element, unnecessary_cast

class CertificateTemplatePredefinedValuesAdditionalExtensionObjectId {
  /// Required. The parts of an OID path. The most significant parts of the path come first.
  final List<int> objectIdPaths;

  /// Creates a new [CertificateTemplatePredefinedValuesAdditionalExtensionObjectId].
  /// [objectIdPaths] Required. The parts of an OID path. The most significant parts of the path come first.
  CertificateTemplatePredefinedValuesAdditionalExtensionObjectId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'objectIdPaths': objectIdPaths};
  }

  factory CertificateTemplatePredefinedValuesAdditionalExtensionObjectId.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateTemplatePredefinedValuesAdditionalExtensionObjectId(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
