// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderSecurityHealthAnalyticsSettingCustomModule.
class GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs {
  final pulumi.Input<String> customModuleId;
  final pulumi.Input<String> folderId;

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
      customModuleId: pulumi.Input.asInput<String>(map['customModuleId']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
    );
  }
}
