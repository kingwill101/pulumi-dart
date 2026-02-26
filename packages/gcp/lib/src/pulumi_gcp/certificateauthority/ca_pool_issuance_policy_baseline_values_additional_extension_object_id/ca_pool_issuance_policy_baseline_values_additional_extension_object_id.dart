// ignore_for_file: unused_element, unnecessary_cast

class CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectIdPaths'] = objectIdPaths;
    return map;
  }

  factory CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId.fromMap(
      Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
