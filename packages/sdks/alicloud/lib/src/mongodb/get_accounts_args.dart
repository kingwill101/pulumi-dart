// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_get_accounts_get_accounts_args_doc}
/// Arguments for getAccounts.
/// {@endtemplate}
/// {@macro pulumi_mongodb_get_accounts_get_accounts_args_doc}
class GetAccountsArgs {
  /// The name of the account. Valid values: `root`.
  final pulumi.Input<String>? accountName;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAccountsArgs].
  /// [accountName] The name of the account. Valid values: `root`.
  /// [instanceId] The ID of the instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAccountsArgs({
    pulumi.Output<String>? accountName,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? outputFile,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountsArgs(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

