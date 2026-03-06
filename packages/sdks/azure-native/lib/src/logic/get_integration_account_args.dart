// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_account_args_doc}
/// Arguments for getIntegrationAccount.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_account_args_doc}
class GetIntegrationAccountArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationAccountArgs].
  /// [integrationAccountName] The integration account name.
  /// [resourceGroupName] The resource group name.
  const GetIntegrationAccountArgs({
    required this.integrationAccountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountArgs(
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

