// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAccount.
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
  final Input<String> accountId;

  /// The ID of the project that the service account is present in.
  /// Defaults to the provider project configuration.
  final Input<String>? project;

  GetAccountArgs({
    required this.accountId,
    this.project,
  });

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
      accountId: Input.asInput<String>(map['accountId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
