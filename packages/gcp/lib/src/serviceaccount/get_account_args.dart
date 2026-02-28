// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_get_account_get_account_args_doc}
class GetAccountArgs {
  /// The Google service account ID. This be one of:
  ///
  /// * The name of the service account within the project (e.g. `my-service`)
  ///
  /// * The fully-qualified path to a service account resource (e.g.
  /// `projects/my-project/serviceAccounts/...`)
  ///
  /// * The email address of the service account (e.g.
  /// `my-service@my-project.iam.gserviceaccount.com`)
  final pulumi.Input<String> accountId;

  /// The ID of the project that the service account is present in.
  /// Defaults to the provider project configuration.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAccountArgs].
  /// [accountId] The Google service account ID. This be one of:
  /// [project] The ID of the project that the service account is present in.
  GetAccountArgs({
    required String accountId,
    String? project,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      accountId: map['accountId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
