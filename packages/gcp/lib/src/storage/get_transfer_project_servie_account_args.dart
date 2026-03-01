// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_transfer_project_servie_account_get_transfer_project_servie_account_args_doc}
/// Arguments for getTransferProjectServieAccount.
/// {@endtemplate}
/// {@macro pulumi_storage_get_transfer_project_servie_account_get_transfer_project_servie_account_args_doc}
class GetTransferProjectServieAccountArgs {
  /// The project ID. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetTransferProjectServieAccountArgs].
  /// [project] The project ID. If it is not provided, the provider project is used.
  GetTransferProjectServieAccountArgs({String? project})
    : project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project};
  }

  factory GetTransferProjectServieAccountArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTransferProjectServieAccountArgs(
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
