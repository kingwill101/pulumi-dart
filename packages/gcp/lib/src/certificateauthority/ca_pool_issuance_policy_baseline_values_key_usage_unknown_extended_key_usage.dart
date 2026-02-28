// ignore_for_file: unused_element, unnecessary_cast

class CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  /// Creates a new [CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectIdPaths'] = objectIdPaths;
    return map;
  }

  factory CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
