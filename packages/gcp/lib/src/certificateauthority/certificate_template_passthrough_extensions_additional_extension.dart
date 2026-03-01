// ignore_for_file: unused_element, unnecessary_cast


class CertificateTemplatePassthroughExtensionsAdditionalExtension {
  /// Required. The parts of an OID path. The most significant parts of the path come first.
  final List<int> objectIdPaths;

  /// Creates a new [CertificateTemplatePassthroughExtensionsAdditionalExtension].
  /// [objectIdPaths] Required. The parts of an OID path. The most significant parts of the path come first.
  CertificateTemplatePassthroughExtensionsAdditionalExtension({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory CertificateTemplatePassthroughExtensionsAdditionalExtension.fromMap(Map<String, dynamic> map) {
    return CertificateTemplatePassthroughExtensionsAdditionalExtension(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}

