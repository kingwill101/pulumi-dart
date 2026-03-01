// ignore_for_file: unused_element, unnecessary_cast

class CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  /// Creates a new [CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'objectIdPaths': objectIdPaths};
  }

  factory CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId.fromMap(
    Map<String, dynamic> map,
  ) {
    return CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
