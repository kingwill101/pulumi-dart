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
    required this.integrationAccountName,
    required this.mapName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'mapName': mapName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountMapArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountMapArgs(
      integrationAccountName: pulumi.Input.fromValue(
        map['integrationAccountName'] as String,
      ),
      mapName: pulumi.Input.fromValue(map['mapName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
