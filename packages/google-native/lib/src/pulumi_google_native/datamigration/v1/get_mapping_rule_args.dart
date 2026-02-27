// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMappingRule.
class GetMappingRuleArgs {
  final pulumi.Input<String> conversionWorkspaceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> mappingRuleId;
  final pulumi.Input<String>? project;

  GetMappingRuleArgs({
    required this.conversionWorkspaceId,
    required this.location,
    required this.mappingRuleId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversionWorkspaceId'] = conversionWorkspaceId;
    map['location'] = location;
    map['mappingRuleId'] = mappingRuleId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMappingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetMappingRuleArgs(
      conversionWorkspaceId:
          pulumi.Input.asInput<String>(map['conversionWorkspaceId']),
      location: pulumi.Input.asInput<String>(map['location']),
      mappingRuleId: pulumi.Input.asInput<String>(map['mappingRuleId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
