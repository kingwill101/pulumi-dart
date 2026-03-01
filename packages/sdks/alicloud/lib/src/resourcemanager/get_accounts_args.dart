// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_accounts_get_accounts_args_doc}
/// Arguments for getAccounts.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_accounts_get_accounts_args_doc}
class GetAccountsArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Account IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of account. Valid values: `CreateCancelled`, `CreateExpired`, `CreateFailed`, `CreateSuccess`, `CreateVerifying`, `InviteSuccess`, `PromoteCancelled`, `PromoteExpired`, `PromoteFailed`, `PromoteSuccess`, `PromoteVerifying`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetAccountsArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Account IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of account. Valid values: `CreateCancelled`, `CreateExpired`, `CreateFailed`, `CreateSuccess`, `CreateVerifying`, `InviteSuccess`, `PromoteCancelled`, `PromoteExpired`, `PromoteFailed`, `PromoteSuccess`, `PromoteVerifying`.
  /// [tags] A mapping of tags to assign to the resource.
  GetAccountsArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountsArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

