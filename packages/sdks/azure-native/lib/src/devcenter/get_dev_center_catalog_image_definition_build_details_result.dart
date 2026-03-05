// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_creation_error_details_response.dart';
import 'image_definition_build_task_group_response.dart';
import 'image_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDevCenterCatalogImageDefinitionBuildDetails.
class GetDevCenterCatalogImageDefinitionBuildDetailsResult {
  /// End time of the task group.
  final String endTime;
  /// Details for image creation error. Populated when the image creation is not successful.
  final ImageCreationErrorDetailsResponse errorDetails;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The specific image version used by the build.
  final ImageReferenceResponse imageReference;
  /// The name of the resource
  final String name;
  /// Start time of the task group.
  final String startTime;
  /// The status of the build.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The list of task groups executed during the image definition build.
  final List<ImageDefinitionBuildTaskGroupResponse> taskGroups;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDevCenterCatalogImageDefinitionBuildDetailsResult].
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
  GetDevCenterCatalogImageDefinitionBuildDetailsResult({
    required this.endTime,
    required this.errorDetails,
    required this.id,
    required this.imageReference,
    required this.name,
    required this.startTime,
    required this.status,
    required this.systemData,
    required this.taskGroups,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'errorDetails': errorDetails.toMap(),
      'id': id,
      'imageReference': imageReference.toMap(),
      'name': name,
      'startTime': startTime,
      'status': status,
      'systemData': systemData.toMap(),
      'taskGroups': pulumi.Input.encodeList<ImageDefinitionBuildTaskGroupResponse, Map<String, dynamic>>(taskGroups, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetDevCenterCatalogImageDefinitionBuildDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetDevCenterCatalogImageDefinitionBuildDetailsResult(
      endTime: map['endTime'] as String,
      errorDetails: ImageCreationErrorDetailsResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      imageReference: ImageReferenceResponse.fromMap((map['imageReference']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      taskGroups: pulumi.Input.decodeList<ImageDefinitionBuildTaskGroupResponse>(map['taskGroups']!, (value) => ImageDefinitionBuildTaskGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

