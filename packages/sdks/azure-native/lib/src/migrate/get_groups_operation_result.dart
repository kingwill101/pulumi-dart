// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getGroupsOperation.
class GetGroupsOperationResult {
  /// If the assessments are in running state.
  final bool? areAssessmentsRunning;
  /// List of References to Assessments created on this group.
  final List<String>? assessments;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Time when this group was created. Date-Time represented in ISO-8601 format.
  final String? createdTimestamp;
  /// Whether the group has been created and is valid.
  final String? groupStatus;
  /// The type of group.
  final String? groupType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Number of machines part of this group.
  final int? machineCount;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// List of assessment types supported on this group.
  final List<String>? supportedAssessmentTypes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Time when this group was last updated. Date-Time represented in ISO-8601 format.
  final String? updatedTimestamp;

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
  const GetGroupsOperationResult({
    this.areAssessmentsRunning,
    this.assessments,
    this.azureApiVersion,
    this.createdTimestamp,
    this.groupStatus,
    this.groupType,
    this.id,
    this.machineCount,
    this.name,
    this.provisioningState,
    this.supportedAssessmentTypes,
    this.systemData,
    this.type,
    this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'areAssessmentsRunning': ?areAssessmentsRunning,
      'assessments': ?assessments,
      'azureApiVersion': ?azureApiVersion,
      'createdTimestamp': ?createdTimestamp,
      'groupStatus': ?groupStatus,
      'groupType': ?groupType,
      'id': ?id,
      'machineCount': ?machineCount,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'supportedAssessmentTypes': ?supportedAssessmentTypes,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'updatedTimestamp': ?updatedTimestamp,
    };
  }

  factory GetGroupsOperationResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsOperationResult(
      areAssessmentsRunning: (() { final guardedValue = map['areAssessmentsRunning']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      assessments: (() { final guardedValue = map['assessments']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupStatus: (() { final guardedValue = map['groupStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupType: (() { final guardedValue = map['groupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineCount: (() { final guardedValue = map['machineCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedAssessmentTypes: (() { final guardedValue = map['supportedAssessmentTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedTimestamp: (() { final guardedValue = map['updatedTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
