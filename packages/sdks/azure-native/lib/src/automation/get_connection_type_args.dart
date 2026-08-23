// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_connection_type_args_doc}
/// Arguments for getConnectionType.
/// {@endtemplate}
/// {@macro pulumi_automation_get_connection_type_args_doc}
class GetConnectionTypeArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The name of connection type.
  final pulumi.Input<String> connectionTypeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectionTypeArgs].
  /// [automationAccountName] The name of the automation account.
  /// [connectionTypeName] The name of connection type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetConnectionTypeArgs({
    required this.automationAccountName,
    required this.connectionTypeName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'connectionTypeName': connectionTypeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectionTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionTypeArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      connectionTypeName: pulumi.Input.fromValue(map['connectionTypeName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
