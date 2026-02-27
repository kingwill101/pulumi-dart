// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Account.
class AccountArgs {
  /// The account id that is used to generate the service
  /// account email address and a stable unique id. It is unique within a project,
  /// must be 6-30 characters long, and match the regular expression `a-z`
  /// to comply with RFC1035. Changing this forces a new service account to be created.
  final pulumi.Input<String>? accountId;

  /// If set to true, skip service account creation if a service account with the same email already exists.
  final pulumi.Input<bool>? createIgnoreAlreadyExists;

  /// A text description of the service account.
  /// Must be less than or equal to 256 UTF-8 bytes.
  final pulumi.Input<String>? description;

  /// Whether a service account is disabled or not. Defaults to `false`. This field has no effect during creation.
  /// Must be set after creation to disable a service account.
  final pulumi.Input<bool>? disabled;

  /// The display name for the service account.
  /// Can be updated without creating a new resource.
  final pulumi.Input<String>? displayName;

  /// The ID of the project that the service account will be created in.
  /// Defaults to the provider project configuration.
  final pulumi.Input<String>? project;

  AccountArgs({
    this.accountId,
    this.createIgnoreAlreadyExists,
    this.description,
    this.disabled,
    this.displayName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final createIgnoreAlreadyExistsValue = createIgnoreAlreadyExists;
    if (createIgnoreAlreadyExistsValue != null) {
      map['createIgnoreAlreadyExists'] = createIgnoreAlreadyExistsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      createIgnoreAlreadyExists:
          pulumi.Input.asOptionalInput<bool>(map['createIgnoreAlreadyExists']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
