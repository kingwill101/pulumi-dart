// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getGroupsOperation.
class GetGroupsOperationResult {
  /// If the assessments are in running state.
  final bool areAssessmentsRunning;

  /// List of References to Assessments created on this group.
  final List<String> assessments;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Time when this group was created. Date-Time represented in ISO-8601 format.
  final String createdTimestamp;

  /// Whether the group has been created and is valid.
  final String groupStatus;

  /// The type of group.
  final String? groupType;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// Number of machines part of this group.
  final int machineCount;

  /// The name of the resource
  final String name;

  /// The status of the last operation.
  final String? provisioningState;

  /// List of assessment types supported on this group.
  final List<String>? supportedAssessmentTypes;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Time when this group was last updated. Date-Time represented in ISO-8601 format.
  final String updatedTimestamp;

  /// Creates a new [GetGroupsOperationResult].
  /// [areAssessmentsRunning] If the assessments are in running state.
  /// [assessments] List of References to Assessments created on this group.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTimestamp] Time when this group was created. Date-Time represented in ISO-8601 format.
  /// [groupStatus] Whether the group has been created and is valid.
  /// [groupType] The type of group.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [machineCount] Number of machines part of this group.
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [supportedAssessmentTypes] List of assessment types supported on this group.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedTimestamp] Time when this group was last updated. Date-Time represented in ISO-8601 format.
  GetGroupsOperationResult({
    required this.areAssessmentsRunning,
    required this.assessments,
    required this.azureApiVersion,
    required this.createdTimestamp,
    required this.groupStatus,
    this.groupType,
    required this.id,
    required this.machineCount,
    required this.name,
    this.provisioningState,
    this.supportedAssessmentTypes,
    required this.systemData,
    required this.type,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'areAssessmentsRunning': areAssessmentsRunning,
      'assessments': assessments,
      'azureApiVersion': azureApiVersion,
      'createdTimestamp': createdTimestamp,
      'groupStatus': groupStatus,
      'groupType': ?groupType,
      'id': id,
      'machineCount': machineCount,
      'name': name,
      'provisioningState': ?provisioningState,
      'supportedAssessmentTypes': ?supportedAssessmentTypes,
      'systemData': systemData.toMap(),
      'type': type,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory GetGroupsOperationResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsOperationResult(
      areAssessmentsRunning: map['areAssessmentsRunning'] as bool,
      assessments: (map['assessments'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      createdTimestamp: map['createdTimestamp'] as String,
      groupStatus: map['groupStatus'] as String,
      groupType: (() {
        final guardedValue = map['groupType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      machineCount: map['machineCount'] as int,
      name: map['name'] as String,
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      supportedAssessmentTypes: (() {
        final guardedValue = map['supportedAssessmentTypes'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}
