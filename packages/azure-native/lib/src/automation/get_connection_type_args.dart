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
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectionTypeArgs].
  /// [automationAccountName] The name of the automation account.
  /// [connectionTypeName] The name of connection type.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetConnectionTypeArgs({
    required String automationAccountName,
    required String connectionTypeName,
    required String resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      connectionTypeName = pulumi.Input.asInput<String>(connectionTypeName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'connectionTypeName': connectionTypeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectionTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionTypeArgs(
      automationAccountName: map['automationAccountName'] as String,
      connectionTypeName: map['connectionTypeName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

