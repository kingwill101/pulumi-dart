// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_account_account_args_doc}
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

  /// Creates a new [AccountArgs].
  /// [accountId] The account id that is used to generate the service
  /// [createIgnoreAlreadyExists] If set to true, skip service account creation if a service account with the same email already exists.
  /// [description] A text description of the service account.
  /// [disabled] Whether a service account is disabled or not. Defaults to `false`. This field has no effect during creation.
  /// [displayName] The display name for the service account.
  /// [project] The ID of the project that the service account will be created in.
  AccountArgs({
    String? accountId,
    bool? createIgnoreAlreadyExists,
    String? description,
    bool? disabled,
    String? displayName,
    String? project,
  }) : accountId = pulumi.Input.asOptionalInput<String>(accountId),
       createIgnoreAlreadyExists = pulumi.Input.asOptionalInput<bool>(
         createIgnoreAlreadyExists,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       disabled = pulumi.Input.asOptionalInput<bool>(disabled),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createIgnoreAlreadyExists': ?createIgnoreAlreadyExists,
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'project': ?project,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      createIgnoreAlreadyExists: map['createIgnoreAlreadyExists'] == null
          ? null
          : map['createIgnoreAlreadyExists'] as bool,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
