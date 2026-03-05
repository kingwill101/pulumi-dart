// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_security_properties_project_protection.dart';

class ProjectSecurityProperties {
  /// Set whether to enable the [Download permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/download-control), that is, set the ODPS. security.enabledownloadprivilege property.
  final pulumi.Input<bool>? enableDownloadPrivilege;
  /// Set whether to use the [Label permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/label-based-access-control), that is, set the LabelSecurity attribute, which is not used by default.
  final pulumi.Input<bool>? labelSecurity;
  /// Sets whether to allow the creator of the object to have access to the object, I .e. sets the attribute. The default is the allowed state.
  final pulumi.Input<bool>? objectCreatorHasAccessPermission;
  /// The ObjectCreatorHasGrantPermission attribute is set to allow the object creator to have the authorization permission on the object. The default is the allowed state.
  final pulumi.Input<bool>? objectCreatorHasGrantPermission;
  /// Project protection See `project_protection` below.
  final pulumi.Input<ProjectSecurityPropertiesProjectProtection>? projectProtection;
  /// Set whether to use the [ACL permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/maxcompute-permissions), that is, set the CheckPermissionUsingACL attribute, which is in use by default.
  final pulumi.Input<bool>? usingAcl;
  /// Set whether to use the Policy permission control function (https://www.alibabacloud.com/help/en/maxcompute/user-guide/policy-based-access-control-1), that is, set the CheckPermissionUsingACL attribute, which is in use by default.
  final pulumi.Input<bool>? usingPolicy;

  /// Creates a new [ProjectSecurityProperties].
  /// [enableDownloadPrivilege] Set whether to enable the [Download permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/download-control), that is, set the ODPS. security.enabledownloadprivilege property.
  /// [labelSecurity] Set whether to use the [Label permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/label-based-access-control), that is, set the LabelSecurity attribute, which is not used by default.
  /// [objectCreatorHasAccessPermission] Sets whether to allow the creator of the object to have access to the object, I .e. sets the attribute. The default is the allowed state.
  /// [objectCreatorHasGrantPermission] The ObjectCreatorHasGrantPermission attribute is set to allow the object creator to have the authorization permission on the object. The default is the allowed state.
  /// [projectProtection] Project protection See `project_protection` below.
  /// [usingAcl] Set whether to use the [ACL permission control function](https://www.alibabacloud.com/help/en/maxcompute/user-guide/maxcompute-permissions), that is, set the CheckPermissionUsingACL attribute, which is in use by default.
  /// [usingPolicy] Set whether to use the Policy permission control function (https://www.alibabacloud.com/help/en/maxcompute/user-guide/policy-based-access-control-1), that is, set the CheckPermissionUsingACL attribute, which is in use by default.
  ProjectSecurityProperties({
    this.enableDownloadPrivilege,
    this.labelSecurity,
    this.objectCreatorHasAccessPermission,
    this.objectCreatorHasGrantPermission,
    this.projectProtection,
    this.usingAcl,
    this.usingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDownloadPrivilege': ?enableDownloadPrivilege,
      'labelSecurity': ?labelSecurity,
      'objectCreatorHasAccessPermission': ?objectCreatorHasAccessPermission,
      'objectCreatorHasGrantPermission': ?objectCreatorHasGrantPermission,
      'projectProtection': ?pulumi.Input.mapOptionalInputValue<ProjectSecurityPropertiesProjectProtection, Map<String, dynamic>>(projectProtection, (value) => value.toMap()),
      'usingAcl': ?usingAcl,
      'usingPolicy': ?usingPolicy,
    };
  }

  factory ProjectSecurityProperties.fromMap(Map<String, dynamic> map) {
    return ProjectSecurityProperties(
      enableDownloadPrivilege: (() { final guardedValue = map['enableDownloadPrivilege']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labelSecurity: (() { final guardedValue = map['labelSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      objectCreatorHasAccessPermission: (() { final guardedValue = map['objectCreatorHasAccessPermission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      objectCreatorHasGrantPermission: (() { final guardedValue = map['objectCreatorHasGrantPermission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      projectProtection: (() { final guardedValue = map['projectProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSecurityPropertiesProjectProtection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usingAcl: (() { final guardedValue = map['usingAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      usingPolicy: (() { final guardedValue = map['usingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

