// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logicapps_get_integration_account_get_integration_account_args_doc}
/// Arguments for getIntegrationAccount.
/// {@endtemplate}
/// {@macro pulumi_logicapps_get_integration_account_get_integration_account_args_doc}
class GetIntegrationAccountArgs {
  /// The name of this Logic App Integration Account.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Logic App Integration Account exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationAccountArgs].
  /// [name] The name of this Logic App Integration Account.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account exists.
  GetIntegrationAccountArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

