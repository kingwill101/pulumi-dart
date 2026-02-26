// ignore_for_file: unused_element, unnecessary_cast

class GetRequiredTagsRequiredTag {
  /// CloudFormation resource types assigned the required tag keys.
  final List<String> cloudFormationResourceTypes;

  /// Tag keys marked as required in the <span pulumi-lang-nodejs="`reportRequiredTagFor`" pulumi-lang-dotnet="`ReportRequiredTagFor`" pulumi-lang-go="`reportRequiredTagFor`" pulumi-lang-python="`report_required_tag_for`" pulumi-lang-yaml="`reportRequiredTagFor`" pulumi-lang-java="`reportRequiredTagFor`">`report_required_tag_for`</span> block of the effective tag policy.
  final List<String> reportingTagKeys;

  /// Resource type for the required tag keys.
  final String resourceType;

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
