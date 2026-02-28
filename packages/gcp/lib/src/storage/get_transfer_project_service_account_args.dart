// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_transfer_project_service_account_get_transfer_project_service_account_args_doc}
/// Arguments for getTransferProjectServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_storage_get_transfer_project_service_account_get_transfer_project_service_account_args_doc}
class GetTransferProjectServiceAccountArgs {
  /// The project ID. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetTransferProjectServiceAccountArgs].
  /// [project] The project ID. If it is not provided, the provider project is used.
  GetTransferProjectServiceAccountArgs({
    String? project,
  }) : project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetTransferProjectServiceAccountArgs.fromMap(
      Map<String, dynamic> map) {
    return GetTransferProjectServiceAccountArgs(
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
