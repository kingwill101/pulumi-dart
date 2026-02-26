// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMappingRule.
class GetMappingRuleArgs {
  final Input<String> conversionWorkspaceId;
  final Input<String> location;
  final Input<String> mappingRuleId;
  final Input<String>? project;

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
          Input.asInput<String>(map['conversionWorkspaceId']),
      location: Input.asInput<String>(map['location']),
      mappingRuleId: Input.asInput<String>(map['mappingRuleId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
