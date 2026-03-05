// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_engagementfabric_list_account_keys_args_doc}
/// Arguments for listAccountKeys.
/// {@endtemplate}
/// {@macro pulumi_engagementfabric_list_account_keys_args_doc}
class ListAccountKeysArgs {
  /// Account Name
  final pulumi.Input<String> accountName;
  /// Resource Group Name
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAccountKeysArgs].
  /// [accountName] Account Name
  /// [resourceGroupName] Resource Group Name
  ListAccountKeysArgs({
    required this.accountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListAccountKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListAccountKeysArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

