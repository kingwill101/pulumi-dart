// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Account.
class AccountArgs {
  /// The account id that is used to generate the service
  /// account email address and a stable unique id. It is unique within a project,
  /// must be 6-30 characters long, and match the regular expression `a-z`
  /// to comply with RFC1035. Changing this forces a new service account to be created.
  final Input<String>? accountId;

  /// If set to true, skip service account creation if a service account with the same email already exists.
  final Input<bool>? createIgnoreAlreadyExists;

  /// A text description of the service account.
  /// Must be less than or equal to 256 UTF-8 bytes.
  final Input<String>? description;

  /// Whether a service account is disabled or not. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. This field has no effect during creation.
  /// Must be set after creation to disable a service account.
  final Input<bool>? disabled;

  /// The display name for the service account.
  /// Can be updated without creating a new resource.
  final Input<String>? displayName;

  /// The ID of the project that the service account will be created in.
  /// Defaults to the provider project configuration.
  final Input<String>? project;

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
      accountId: Input.asOptionalInput<String>(map['accountId']),
      createIgnoreAlreadyExists:
          Input.asOptionalInput<bool>(map['createIgnoreAlreadyExists']),
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
