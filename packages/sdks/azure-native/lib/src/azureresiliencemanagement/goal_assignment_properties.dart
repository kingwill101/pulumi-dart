// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_resource.dart';

/// Definition of goal assignment property.
class GoalAssignmentProperties {
  /// The type of goal assignment.
  final pulumi.Input<String> goalAssignmentType;
  /// Arm id of the goal template.
  final pulumi.Input<String> goalTemplateId;
  /// List of service level resources.
  final pulumi.Input<List<ServiceLevelResource>>? serviceLevelResources;

  /// Creates a new [GoalAssignmentProperties].
  /// [goalAssignmentType] The type of goal assignment.
  /// [goalTemplateId] Arm id of the goal template.
  /// [serviceLevelResources] List of service level resources.
  const GoalAssignmentProperties({
    required this.goalAssignmentType,
    required this.goalTemplateId,
    this.serviceLevelResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goalAssignmentType': goalAssignmentType,
      'goalTemplateId': goalTemplateId,
      'serviceLevelResources': ?pulumi.Input.mapOptionalInputValue<List<ServiceLevelResource>, List<Map<String, dynamic>>>(serviceLevelResources, (value) => pulumi.Input.encodeList<ServiceLevelResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoalAssignmentProperties.fromMap(Map<String, dynamic> map) {
    return GoalAssignmentProperties(
      goalAssignmentType: pulumi.Input.fromValue(map['goalAssignmentType'] as String),
      goalTemplateId: pulumi.Input.fromValue(map['goalTemplateId'] as String),
      serviceLevelResources: (() { final guardedValue = map['serviceLevelResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceLevelResource>(guardedValue, (value) => ServiceLevelResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
