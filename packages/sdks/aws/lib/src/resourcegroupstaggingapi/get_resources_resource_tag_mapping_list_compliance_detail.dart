// ignore_for_file: unused_element, unnecessary_cast


class GetResourcesResourceTagMappingListComplianceDetail {
  /// Whether the resource is compliant.
  /// * `keys_with_noncompliant_values ` - Set of tag keys with non-compliant tag values.
  /// * `non_compliant_keys ` - Set of non-compliant tag keys.
  final bool complianceStatus;
  final List<String> keysWithNoncompliantValues;
  final List<String> nonCompliantKeys;

  /// Creates a new [GetResourcesResourceTagMappingListComplianceDetail].
  /// [complianceStatus] Whether the resource is compliant.
  /// [keysWithNoncompliantValues] Required.
  /// [nonCompliantKeys] Required.
  GetResourcesResourceTagMappingListComplianceDetail({
    required this.complianceStatus,
    required this.keysWithNoncompliantValues,
    required this.nonCompliantKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceStatus': complianceStatus,
      'keysWithNoncompliantValues': keysWithNoncompliantValues,
      'nonCompliantKeys': nonCompliantKeys,
    };
  }

  factory GetResourcesResourceTagMappingListComplianceDetail.fromMap(Map<String, dynamic> map) {
    return GetResourcesResourceTagMappingListComplianceDetail(
      complianceStatus: map['complianceStatus'] as bool,
      keysWithNoncompliantValues: (map['keysWithNoncompliantValues'] as List).cast<String>(),
      nonCompliantKeys: (map['nonCompliantKeys'] as List).cast<String>(),
    );
  }
}

