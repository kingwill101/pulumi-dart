// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_account_args_doc}
class GetAccountArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccountArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAccountArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

