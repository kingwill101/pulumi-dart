// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_creation_error_details_response.dart';
import 'image_definition_build_task_group_response.dart';
import 'image_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getProjectCatalogImageDefinitionBuildDetails.
class GetProjectCatalogImageDefinitionBuildDetailsResult {
  /// End time of the task group.
  final String? endTime;
  /// Details for image creation error. Populated when the image creation is not successful.
  final ImageCreationErrorDetailsResponse? errorDetails;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The specific image version used by the build.
  final ImageReferenceResponse? imageReference;
  /// The name of the resource
  final String? name;
  /// Start time of the task group.
  final String? startTime;
  /// The status of the build.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The list of task groups executed during the image definition build.
  final List<ImageDefinitionBuildTaskGroupResponse>? taskGroups;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetProjectCatalogImageDefinitionBuildDetailsResult].
  /// [endTime] End time of the task group.
  /// [errorDetails] Details for image creation error. Populated when the image creation is not successful.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [imageReference] The specific image version used by the build.
  /// [name] The name of the resource
  /// [startTime] Start time of the task group.
  /// [status] The status of the build.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [taskGroups] The list of task groups executed during the image definition build.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetProjectCatalogImageDefinitionBuildDetailsResult({
    this.endTime,
    this.errorDetails,
    this.id,
    this.imageReference,
    this.name,
    this.startTime,
    this.status,
    this.systemData,
    this.taskGroups,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'errorDetails': ?errorDetails?.toMap(),
      'id': ?id,
      'imageReference': ?imageReference?.toMap(),
      'name': ?name,
      'startTime': ?startTime,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'taskGroups': ?(() { final guardedValue = taskGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<ImageDefinitionBuildTaskGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetProjectCatalogImageDefinitionBuildDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectCatalogImageDefinitionBuildDetailsResult(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return ImageCreationErrorDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageReference: (() { final guardedValue = map['imageReference']; if (guardedValue == null) return null; return ImageReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      taskGroups: (() { final guardedValue = map['taskGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageDefinitionBuildTaskGroupResponse>(guardedValue, (value) => ImageDefinitionBuildTaskGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
