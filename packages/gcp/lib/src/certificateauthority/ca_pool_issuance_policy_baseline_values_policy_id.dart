// ignore_for_file: unused_element, unnecessary_cast


class CaPoolIssuancePolicyBaselineValuesPolicyId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  /// Creates a new [CaPoolIssuancePolicyBaselineValuesPolicyId].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CaPoolIssuancePolicyBaselineValuesPolicyId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory CaPoolIssuancePolicyBaselineValuesPolicyId.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValuesPolicyId(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}

