// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_account_connection_args_doc}
/// Arguments for getAccountConnection.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_account_connection_args_doc}
class GetAccountConnectionArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;

  /// Friendly name of the connection
  final pulumi.Input<String> connectionName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccountConnectionArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [connectionName] Friendly name of the connection
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAccountConnectionArgs({
    required this.accountName,
    required this.connectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'connectionName': connectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccountConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountConnectionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
