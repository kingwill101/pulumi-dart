// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_account_map_args_doc}
/// Arguments for getIntegrationAccountMap.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_account_map_args_doc}
class GetIntegrationAccountMapArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The integration account map name.
  final pulumi.Input<String> mapName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationAccountMapArgs].
  /// [integrationAccountName] The integration account name.
  /// [mapName] The integration account map name.
  /// [resourceGroupName] The resource group name.
  GetIntegrationAccountMapArgs({
    required pulumi.Output<String> integrationAccountName,
    required pulumi.Output<String> mapName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      mapName = pulumi.Input.asInput<String>(mapName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'mapName': mapName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountMapArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountMapArgs(
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      mapName: pulumi.Output.create<String>(map['mapName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

