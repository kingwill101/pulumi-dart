// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderNotificationConfig.
class GetFolderNotificationConfigArgs {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> notificationConfigId;

  GetFolderNotificationConfigArgs({
    required this.folderId,
    required this.notificationConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    map['notificationConfigId'] = notificationConfigId;
    return map;
  }

  factory GetFolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderNotificationConfigArgs(
      folderId: pulumi.Input.asInput<String>(map['folderId']),
      notificationConfigId:
          pulumi.Input.asInput<String>(map['notificationConfigId']),
    );
  }
}
