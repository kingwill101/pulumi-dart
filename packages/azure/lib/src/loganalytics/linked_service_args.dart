// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_linked_service_linked_service_args_doc}
/// The set of arguments for LinkedService.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_linked_service_linked_service_args_doc}
class LinkedServiceArgs {
  /// The ID of the readable Resource that will be linked to the workspace. This should be used for linking to an Automation Account resource.
  final pulumi.Input<String>? readAccessId;
  /// The name of the resource group in which the Log Analytics Linked Service is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Log Analytics Workspace that will contain the Log Analytics Linked Service resource.
  final pulumi.Input<String> workspaceId;
  /// The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource.
  ///
  /// > **Note:** You must define at least one of the above access resource id attributes (e.g. `read_access_id` or `write_access_id`).
  final pulumi.Input<String>? writeAccessId;

  /// Creates a new [LinkedServiceArgs].
  /// [readAccessId] The ID of the readable Resource that will be linked to the workspace. This should be used for linking to an Automation Account resource.
  /// [resourceGroupName] The name of the resource group in which the Log Analytics Linked Service is created. Changing this forces a new resource to be created.
  /// [workspaceId] The ID of the Log Analytics Workspace that will contain the Log Analytics Linked Service resource.
  /// [writeAccessId] The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource.
  LinkedServiceArgs({
    String? readAccessId,
    required String resourceGroupName,
    required String workspaceId,
    String? writeAccessId,
  }) :
      readAccessId = pulumi.Input.asOptionalInput<String>(readAccessId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId),
      writeAccessId = pulumi.Input.asOptionalInput<String>(writeAccessId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readAccessId': ?readAccessId,
      'resourceGroupName': resourceGroupName,
      'workspaceId': workspaceId,
      'writeAccessId': ?writeAccessId,
    };
  }

  factory LinkedServiceArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceArgs(
      readAccessId: map['readAccessId'] == null ? null : map['readAccessId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceId: map['workspaceId'] as String,
      writeAccessId: map['writeAccessId'] == null ? null : map['writeAccessId'] as String,
    );
  }
}

