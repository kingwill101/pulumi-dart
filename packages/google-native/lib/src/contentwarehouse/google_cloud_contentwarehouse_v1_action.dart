// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contentwarehouse_v1_access_control_action.dart';
import 'google_cloud_contentwarehouse_v1_add_to_folder_action.dart';
import 'google_cloud_contentwarehouse_v1_data_update_action.dart';
import 'google_cloud_contentwarehouse_v1_data_validation_action.dart';
import 'google_cloud_contentwarehouse_v1_delete_document_action.dart';
import 'google_cloud_contentwarehouse_v1_publish_action.dart';
import 'google_cloud_contentwarehouse_v1_remove_from_folder_action.dart';

/// Represents the action triggered by Rule Engine when the rule is true.
class GoogleCloudContentwarehouseV1Action {
  /// Action triggering access control operations.
  final GoogleCloudContentwarehouseV1AccessControlAction? accessControl;

  /// ID of the action. Managed internally.
  final String? actionId;

  /// Action triggering create document link operation.
  final GoogleCloudContentwarehouseV1AddToFolderAction? addToFolder;

  /// Action triggering data update operations.
  final GoogleCloudContentwarehouseV1DataUpdateAction? dataUpdate;

  /// Action triggering data validation operations.
  final GoogleCloudContentwarehouseV1DataValidationAction? dataValidation;

  /// Action deleting the document.
  final GoogleCloudContentwarehouseV1DeleteDocumentAction? deleteDocumentAction;

  /// Action publish to Pub/Sub operation.
  final GoogleCloudContentwarehouseV1PublishAction? publishToPubSub;

  /// Action removing a document from a folder.
  final GoogleCloudContentwarehouseV1RemoveFromFolderAction?
  removeFromFolderAction;

  /// Creates a new [GoogleCloudContentwarehouseV1Action].
  /// [accessControl] Action triggering access control operations.
  /// [actionId] ID of the action. Managed internally.
  /// [addToFolder] Action triggering create document link operation.
  /// [dataUpdate] Action triggering data update operations.
  /// [dataValidation] Action triggering data validation operations.
  /// [deleteDocumentAction] Action deleting the document.
  /// [publishToPubSub] Action publish to Pub/Sub operation.
  /// [removeFromFolderAction] Action removing a document from a folder.
  GoogleCloudContentwarehouseV1Action({
    this.accessControl,
    this.actionId,
    this.addToFolder,
    this.dataUpdate,
    this.dataValidation,
    this.deleteDocumentAction,
    this.publishToPubSub,
    this.removeFromFolderAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControl': ?accessControl == null ? null : accessControl!.toMap(),
      'actionId': ?actionId,
      'addToFolder': ?addToFolder == null ? null : addToFolder!.toMap(),
      'dataUpdate': ?dataUpdate == null ? null : dataUpdate!.toMap(),
      'dataValidation': ?dataValidation == null
          ? null
          : dataValidation!.toMap(),
      'deleteDocumentAction': ?deleteDocumentAction == null
          ? null
          : deleteDocumentAction!.toMap(),
      'publishToPubSub': ?publishToPubSub == null
          ? null
          : publishToPubSub!.toMap(),
      'removeFromFolderAction': ?removeFromFolderAction == null
          ? null
          : removeFromFolderAction!.toMap(),
    };
  }

  factory GoogleCloudContentwarehouseV1Action.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1Action(
      accessControl: map['accessControl'] == null
          ? null
          : GoogleCloudContentwarehouseV1AccessControlAction.fromMap(
              (map['accessControl'] as Map).cast<String, dynamic>(),
            ),
      actionId: map['actionId'] == null ? null : map['actionId'] as String,
      addToFolder: map['addToFolder'] == null
          ? null
          : GoogleCloudContentwarehouseV1AddToFolderAction.fromMap(
              (map['addToFolder'] as Map).cast<String, dynamic>(),
            ),
      dataUpdate: map['dataUpdate'] == null
          ? null
          : GoogleCloudContentwarehouseV1DataUpdateAction.fromMap(
              (map['dataUpdate'] as Map).cast<String, dynamic>(),
            ),
      dataValidation: map['dataValidation'] == null
          ? null
          : GoogleCloudContentwarehouseV1DataValidationAction.fromMap(
              (map['dataValidation'] as Map).cast<String, dynamic>(),
            ),
      deleteDocumentAction: map['deleteDocumentAction'] == null
          ? null
          : GoogleCloudContentwarehouseV1DeleteDocumentAction.fromMap(
              (map['deleteDocumentAction'] as Map).cast<String, dynamic>(),
            ),
      publishToPubSub: map['publishToPubSub'] == null
          ? null
          : GoogleCloudContentwarehouseV1PublishAction.fromMap(
              (map['publishToPubSub'] as Map).cast<String, dynamic>(),
            ),
      removeFromFolderAction: map['removeFromFolderAction'] == null
          ? null
          : GoogleCloudContentwarehouseV1RemoveFromFolderAction.fromMap(
              (map['removeFromFolderAction'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
