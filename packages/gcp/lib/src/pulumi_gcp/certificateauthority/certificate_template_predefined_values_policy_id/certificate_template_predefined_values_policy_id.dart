// ignore_for_file: unused_element, unnecessary_cast

class CertificateTemplatePredefinedValuesPolicyId {
  /// Required. The parts of an OID path. The most significant parts of the path come first.
  final List<int> objectIdPaths;

  CertificateTemplatePredefinedValuesPolicyId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectIdPaths'] = objectIdPaths;
    return map;
  }

  factory CertificateTemplatePredefinedValuesPolicyId.fromMap(
      Map<String, dynamic> map) {
    return CertificateTemplatePredefinedValuesPolicyId(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
