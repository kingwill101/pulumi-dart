// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contentwarehouse_v1_access_control_action_response.dart';
import 'google_cloud_contentwarehouse_v1_add_to_folder_action_response.dart';
import 'google_cloud_contentwarehouse_v1_data_update_action_response.dart';
import 'google_cloud_contentwarehouse_v1_data_validation_action_response.dart';
import 'google_cloud_contentwarehouse_v1_delete_document_action_response.dart';
import 'google_cloud_contentwarehouse_v1_publish_action_response.dart';
import 'google_cloud_contentwarehouse_v1_remove_from_folder_action_response.dart';

/// Represents the action triggered by Rule Engine when the rule is true.
class GoogleCloudContentwarehouseV1ActionResponse {
  /// Action triggering access control operations.
  final GoogleCloudContentwarehouseV1AccessControlActionResponse accessControl;

  /// ID of the action. Managed internally.
  final String actionId;

  /// Action triggering create document link operation.
  final GoogleCloudContentwarehouseV1AddToFolderActionResponse addToFolder;

  /// Action triggering data update operations.
  final GoogleCloudContentwarehouseV1DataUpdateActionResponse dataUpdate;

  /// Action triggering data validation operations.
  final GoogleCloudContentwarehouseV1DataValidationActionResponse
      dataValidation;

  /// Action deleting the document.
  final GoogleCloudContentwarehouseV1DeleteDocumentActionResponse
      deleteDocumentAction;

  /// Action publish to Pub/Sub operation.
  final GoogleCloudContentwarehouseV1PublishActionResponse publishToPubSub;

  /// Action removing a document from a folder.
  final GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse
      removeFromFolderAction;

  GoogleCloudContentwarehouseV1ActionResponse({
    required this.accessControl,
    required this.actionId,
    required this.addToFolder,
    required this.dataUpdate,
    required this.dataValidation,
    required this.deleteDocumentAction,
    required this.publishToPubSub,
    required this.removeFromFolderAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessControl'] = accessControl.toMap();
    map['actionId'] = actionId;
    map['addToFolder'] = addToFolder.toMap();
    map['dataUpdate'] = dataUpdate.toMap();
    map['dataValidation'] = dataValidation.toMap();
    map['deleteDocumentAction'] = deleteDocumentAction.toMap();
    map['publishToPubSub'] = publishToPubSub.toMap();
    map['removeFromFolderAction'] = removeFromFolderAction.toMap();
    return map;
  }

  factory GoogleCloudContentwarehouseV1ActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1ActionResponse(
      accessControl:
          GoogleCloudContentwarehouseV1AccessControlActionResponse.fromMap(
              (map['accessControl'] as Map).cast<String, dynamic>()),
      actionId: map['actionId'] as String,
      addToFolder:
          GoogleCloudContentwarehouseV1AddToFolderActionResponse.fromMap(
              (map['addToFolder'] as Map).cast<String, dynamic>()),
      dataUpdate: GoogleCloudContentwarehouseV1DataUpdateActionResponse.fromMap(
          (map['dataUpdate'] as Map).cast<String, dynamic>()),
      dataValidation:
          GoogleCloudContentwarehouseV1DataValidationActionResponse.fromMap(
              (map['dataValidation'] as Map).cast<String, dynamic>()),
      deleteDocumentAction:
          GoogleCloudContentwarehouseV1DeleteDocumentActionResponse.fromMap(
              (map['deleteDocumentAction'] as Map).cast<String, dynamic>()),
      publishToPubSub:
          GoogleCloudContentwarehouseV1PublishActionResponse.fromMap(
              (map['publishToPubSub'] as Map).cast<String, dynamic>()),
      removeFromFolderAction:
          GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse.fromMap(
              (map['removeFromFolderAction'] as Map).cast<String, dynamic>()),
    );
  }
}
