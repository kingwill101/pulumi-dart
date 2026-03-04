// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcesResourceTagMappingListComplianceDetail {
  /// Whether the resource is compliant.
  /// * `keys_with_noncompliant_values ` - Set of tag keys with non-compliant tag values.
  /// * `non_compliant_keys ` - Set of non-compliant tag keys.
  final pulumi.Input<bool> complianceStatus;
  final pulumi.Input<List<String>> keysWithNoncompliantValues;
  final pulumi.Input<List<String>> nonCompliantKeys;

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

  factory GetResourcesResourceTagMappingListComplianceDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResourcesResourceTagMappingListComplianceDetail(
      complianceStatus: pulumi.Input.fromValue(map['complianceStatus'] as bool),
      keysWithNoncompliantValues: pulumi.Input.fromValue(
        (map['keysWithNoncompliantValues'] as List).cast<String>(),
      ),
      nonCompliantKeys: pulumi.Input.fromValue(
        (map['nonCompliantKeys'] as List).cast<String>(),
      ),
    );
  }
}
