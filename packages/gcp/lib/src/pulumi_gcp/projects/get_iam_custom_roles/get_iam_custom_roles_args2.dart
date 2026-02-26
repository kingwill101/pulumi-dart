// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIamCustomRoles.
class GetIamCustomRolesArgs2 {
  /// The project were the custom role has been created in. Defaults to the provider project configuration.
  final Input<String>? project;

  /// Include Roles that have been deleted. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? showDeleted;

  /// When `"FULL"` is specified, the <span pulumi-lang-nodejs="`permissions`" pulumi-lang-dotnet="`Permissions`" pulumi-lang-go="`permissions`" pulumi-lang-python="`permissions`" pulumi-lang-yaml="`permissions`" pulumi-lang-java="`permissions`">`permissions`</span> field is returned, which includes a list of all permissions in the role. The default value is `"BASIC"`, which does not return the <span pulumi-lang-nodejs="`permissions`" pulumi-lang-dotnet="`Permissions`" pulumi-lang-go="`permissions`" pulumi-lang-python="`permissions`" pulumi-lang-yaml="`permissions`" pulumi-lang-java="`permissions`">`permissions`</span>.
  final Input<String>? view;

  GetIamCustomRolesArgs2({
    this.project,
    this.showDeleted,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final showDeletedValue = showDeleted;
    if (showDeletedValue != null) {
      map['showDeleted'] = showDeletedValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetIamCustomRolesArgs2.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRolesArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      showDeleted: Input.asOptionalInput<bool>(map['showDeleted']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
