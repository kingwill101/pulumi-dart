// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_directory_role_directory_role_args_doc}
/// The set of arguments for DirectoryRole.
/// {@endtemplate}
/// {@macro pulumi_index_directory_role_directory_role_args_doc}
class DirectoryRoleArgs {
  /// The display name of the directory role to activate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? displayName;
  /// The object ID of the role template from which to activate the directory role. Changing this forces a new resource to be created.
  ///
  /// > Either `display_name` or `template_id` must be specified.
  final pulumi.Input<String>? templateId;

  /// Creates a new [DirectoryRoleArgs].
  /// [displayName] The display name of the directory role to activate. Changing this forces a new resource to be created.
  /// [templateId] The object ID of the role template from which to activate the directory role. Changing this forces a new resource to be created.
  DirectoryRoleArgs({
    String? displayName,
    String? templateId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      templateId = pulumi.Input.asOptionalInput<String>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'templateId': ?templateId,
    };
  }

  factory DirectoryRoleArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryRoleArgs(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
    );
  }
}

