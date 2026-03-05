// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRequiredTagsRequiredTag {
  /// CloudFormation resource types assigned the required tag keys.
  final pulumi.Input<List<String>> cloudFormationResourceTypes;
  /// Tag keys marked as required in the `report_required_tag_for` block of the effective tag policy.
  final pulumi.Input<List<String>> reportingTagKeys;
  /// Resource type for the required tag keys.
  final pulumi.Input<String> resourceType;

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
    return <String, dynamic>{
      'cloudFormationResourceTypes': cloudFormationResourceTypes,
      'reportingTagKeys': reportingTagKeys,
      'resourceType': resourceType,
    };
  }

  factory GetRequiredTagsRequiredTag.fromMap(Map<String, dynamic> map) {
    return GetRequiredTagsRequiredTag(
      cloudFormationResourceTypes: pulumi.Input.fromValue((map['cloudFormationResourceTypes'] as List).cast<String>()),
      reportingTagKeys: pulumi.Input.fromValue((map['reportingTagKeys'] as List).cast<String>()),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

