// ignore_for_file: unused_element, unnecessary_cast

import 'get_projects_project_security_properties_project_protection.dart';

class GetProjectsProjectSecurityProperties {
  /// Set whether to enable the [Download permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/download-control), that is, set the ODPS. security.enabledownloadprivilege property.
  final bool enableDownloadPrivilege;
  /// Set whether to use the [Label permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/label-based-access-control), that is, set the LabelSecurity attribute, which is not used by default.
  final bool labelSecurity;
  /// Sets whether to allow the creator of the object to have access to the object, I .e. sets the attribute. The default is the allowed state.
  final bool objectCreatorHasAccessPermission;
  /// The ObjectCreatorHasGrantPermission attribute is set to allow the object creator to have the authorization permission on the object. The default is the allowed state.
  final bool objectCreatorHasGrantPermission;
  /// Project protection.
  final GetProjectsProjectSecurityPropertiesProjectProtection projectProtection;
  /// Set whether to use the [ACL permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/maxcompute-permissions), that is, set the CheckPermissionUsingACL attribute, which is in use by default.
  final bool usingAcl;
  /// Set whether to use the Policy permission control function (https://www.alibabacloud.com/help/en/maxcompute/user-guide/policy-based-access-control-1), that is, set the CheckPermissionUsingACL attribute, which is in use by default.
  final bool usingPolicy;

  /// Creates a new [GetProjectsProjectSecurityProperties].
  /// [enableDownloadPrivilege] Set whether to enable the [Download permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/download-control), that is, set the ODPS. security.enabledownloadprivilege property.
  /// [labelSecurity] Set whether to use the [Label permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/label-based-access-control), that is, set the LabelSecurity attribute, which is not used by default.
  /// [objectCreatorHasAccessPermission] Sets whether to allow the creator of the object to have access to the object, I .e. sets the attribute. The default is the allowed state.
  /// [objectCreatorHasGrantPermission] The ObjectCreatorHasGrantPermission attribute is set to allow the object creator to have the authorization permission on the object. The default is the allowed state.
  /// [projectProtection] Project protection.
  /// [usingAcl] Set whether to use the [ACL permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/maxcompute-permissions), that is, set the CheckPermissionUsingACL attribute, which is in use by default.
  /// [usingPolicy] Set whether to use the Policy permission control function (https://www.alibabacloud.com/help/en/maxcompute/user-guide/policy-based-access-control-1), that is, set the CheckPermissionUsingACL attribute, which is in use by default.
  GetProjectsProjectSecurityProperties({
    required this.enableDownloadPrivilege,
    required this.labelSecurity,
    required this.objectCreatorHasAccessPermission,
    required this.objectCreatorHasGrantPermission,
    required this.projectProtection,
    required this.usingAcl,
    required this.usingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDownloadPrivilege': enableDownloadPrivilege,
      'labelSecurity': labelSecurity,
      'objectCreatorHasAccessPermission': objectCreatorHasAccessPermission,
      'objectCreatorHasGrantPermission': objectCreatorHasGrantPermission,
      'projectProtection': projectProtection.toMap(),
      'usingAcl': usingAcl,
      'usingPolicy': usingPolicy,
    };
  }

  factory GetProjectsProjectSecurityProperties.fromMap(Map<String, dynamic> map) {
    return GetProjectsProjectSecurityProperties(
      enableDownloadPrivilege: map['enableDownloadPrivilege'] as bool,
      labelSecurity: map['labelSecurity'] as bool,
      objectCreatorHasAccessPermission: map['objectCreatorHasAccessPermission'] as bool,
      objectCreatorHasGrantPermission: map['objectCreatorHasGrantPermission'] as bool,
      projectProtection: GetProjectsProjectSecurityPropertiesProjectProtection.fromMap((map['projectProtection'] as Map).cast<String, dynamic>()),
      usingAcl: map['usingAcl'] as bool,
      usingPolicy: map['usingPolicy'] as bool,
    );
  }
}

