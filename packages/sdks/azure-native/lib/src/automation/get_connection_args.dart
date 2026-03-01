// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_connection_args_doc}
/// Arguments for getConnection.
/// {@endtemplate}
/// {@macro pulumi_automation_get_connection_args_doc}
class GetConnectionArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The name of connection.
  final pulumi.Input<String> connectionName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectionArgs].
  /// [automationAccountName] The name of the automation account.
  /// [connectionName] The name of connection.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetConnectionArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      connectionName = pulumi.Input.asInput<String>(connectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'connectionName': connectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

