// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'service_level_resource_response.dart';

/// Definition of goal assignment property.
class GoalAssignmentPropertiesResponse {
  /// Details of any errors encountered during the operation.
  final pulumi.Input<ErrorDetailResponse> errorDetails;
  /// The type of goal assignment.
  final pulumi.Input<String> goalAssignmentType;
  /// Arm id of the goal template.
  final pulumi.Input<String> goalTemplateId;
  /// Provisioning state
  final pulumi.Input<String> provisioningState;
  /// List of service level resources.
  final pulumi.Input<List<ServiceLevelResourceResponse>?>? serviceLevelResources;

  /// Creates a new [GoalAssignmentPropertiesResponse].
  /// [errorDetails] Details of any errors encountered during the operation.
  /// [goalAssignmentType] The type of goal assignment.
  /// [goalTemplateId] Arm id of the goal template.
  /// [provisioningState] Provisioning state
  /// [serviceLevelResources] List of service level resources.
  const GoalAssignmentPropertiesResponse({
    required this.errorDetails,
    required this.goalAssignmentType,
    required this.goalTemplateId,
    required this.provisioningState,
    this.serviceLevelResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'goalAssignmentType': goalAssignmentType,
      'goalTemplateId': goalTemplateId,
      'provisioningState': provisioningState,
      'serviceLevelResources': ?pulumi.Input.mapOptionalInputValue<List<ServiceLevelResourceResponse>, List<Map<String, dynamic>>>(serviceLevelResources, (value) => pulumi.Input.encodeList<ServiceLevelResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoalAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GoalAssignmentPropertiesResponse(
      errorDetails: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      goalAssignmentType: pulumi.Input.fromValue(map['goalAssignmentType'] as String),
      goalTemplateId: pulumi.Input.fromValue(map['goalTemplateId'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      serviceLevelResources: (() { final guardedValue = map['serviceLevelResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceLevelResourceResponse>(guardedValue, (value) => ServiceLevelResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
