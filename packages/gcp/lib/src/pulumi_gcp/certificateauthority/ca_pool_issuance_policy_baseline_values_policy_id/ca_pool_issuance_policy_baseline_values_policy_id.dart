// ignore_for_file: unused_element, unnecessary_cast

class CaPoolIssuancePolicyBaselineValuesPolicyId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  CaPoolIssuancePolicyBaselineValuesPolicyId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectIdPaths'] = objectIdPaths;
    return map;
  }

  factory CaPoolIssuancePolicyBaselineValuesPolicyId.fromMap(
      Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValuesPolicyId(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
