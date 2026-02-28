// ignore_for_file: unused_element, unnecessary_cast

class GetRequiredTagsRequiredTag {
  /// CloudFormation resource types assigned the required tag keys.
  final List<String> cloudFormationResourceTypes;

  /// Tag keys marked as required in the `report_required_tag_for` block of the effective tag policy.
  final List<String> reportingTagKeys;

  /// Resource type for the required tag keys.
  final String resourceType;

  /// Creates a new [GetRequiredTagsRequiredTag].
  /// [cloudFormationResourceTypes] CloudFormation resource types assigned the required tag keys.
  /// [reportingTagKeys] Tag keys marked as required in the `report_required_tag_for` block of the effective tag policy.
  /// [resourceType] Resource type for the required tag keys.
  GetRequiredTagsRequiredTag({
    required this.cloudFormationResourceTypes,
    required this.reportingTagKeys,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudFormationResourceTypes'] = cloudFormationResourceTypes;
    map['reportingTagKeys'] = reportingTagKeys;
    map['resourceType'] = resourceType;
    return map;
  }

  factory GetRequiredTagsRequiredTag.fromMap(Map<String, dynamic> map) {
    return GetRequiredTagsRequiredTag(
      cloudFormationResourceTypes:
          (map['cloudFormationResourceTypes'] as List).cast<String>(),
      reportingTagKeys: (map['reportingTagKeys'] as List).cast<String>(),
      resourceType: map['resourceType'] as String,
    );
  }
}
