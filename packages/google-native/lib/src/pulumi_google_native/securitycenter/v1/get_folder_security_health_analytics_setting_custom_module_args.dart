// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFolderSecurityHealthAnalyticsSettingCustomModule.
class GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs {
  final Input<String> customModuleId;
  final Input<String> folderId;

  GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs({
    required this.customModuleId,
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customModuleId'] = customModuleId;
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs(
      customModuleId: Input.asInput<String>(map['customModuleId']),
      folderId: Input.asInput<String>(map['folderId']),
    );
  }
}
