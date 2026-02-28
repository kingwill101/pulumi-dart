// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_folder_notification_config_args_doc}
/// Arguments for getFolderNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_folder_notification_config_args_doc}
class GetFolderNotificationConfigArgs {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> notificationConfigId;

  /// Creates a new [GetFolderNotificationConfigArgs].
  /// [folderId] Required.
  /// [notificationConfigId] Required.
  GetFolderNotificationConfigArgs({
    required String folderId,
    required String notificationConfigId,
  }) :
      folderId = pulumi.Input.asInput<String>(folderId),
      notificationConfigId = pulumi.Input.asInput<String>(notificationConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': folderId,
      'notificationConfigId': notificationConfigId,
    };
  }

  factory GetFolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderNotificationConfigArgs(
      folderId: map['folderId'] as String,
      notificationConfigId: map['notificationConfigId'] as String,
    );
  }
}

