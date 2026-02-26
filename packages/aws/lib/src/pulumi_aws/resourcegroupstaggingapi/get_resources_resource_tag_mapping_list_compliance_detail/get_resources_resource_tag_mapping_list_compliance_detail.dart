// ignore_for_file: unused_element, unnecessary_cast

class GetResourcesResourceTagMappingListComplianceDetail {
  /// Whether the resource is compliant.
  /// * <span pulumi-lang-nodejs="`keysWithNoncompliantValues " pulumi-lang-dotnet="`KeysWithNoncompliantValues " pulumi-lang-go="`keysWithNoncompliantValues " pulumi-lang-python="`keys_with_noncompliant_values " pulumi-lang-yaml="`keysWithNoncompliantValues " pulumi-lang-java="`keysWithNoncompliantValues ">`keys_with_noncompliant_values </span>` - Set of tag keys with non-compliant tag values.
  /// * <span pulumi-lang-nodejs="`nonCompliantKeys " pulumi-lang-dotnet="`NonCompliantKeys " pulumi-lang-go="`nonCompliantKeys " pulumi-lang-python="`non_compliant_keys " pulumi-lang-yaml="`nonCompliantKeys " pulumi-lang-java="`nonCompliantKeys ">`non_compliant_keys </span>` - Set of non-compliant tag keys.
  final bool complianceStatus;
  final List<String> keysWithNoncompliantValues;
  final List<String> nonCompliantKeys;

  GetResourcesResourceTagMappingListComplianceDetail({
    required this.complianceStatus,
    required this.keysWithNoncompliantValues,
    required this.nonCompliantKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['complianceStatus'] = complianceStatus;
    map['keysWithNoncompliantValues'] = keysWithNoncompliantValues;
    map['nonCompliantKeys'] = nonCompliantKeys;
    return map;
  }

  factory GetResourcesResourceTagMappingListComplianceDetail.fromMap(
      Map<String, dynamic> map) {
    return GetResourcesResourceTagMappingListComplianceDetail(
      complianceStatus: map['complianceStatus'] as bool,
      keysWithNoncompliantValues:
          (map['keysWithNoncompliantValues'] as List).cast<String>(),
      nonCompliantKeys: (map['nonCompliantKeys'] as List).cast<String>(),
    );
  }
}
