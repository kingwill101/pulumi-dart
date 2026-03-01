// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_connector_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_connector_args_doc}
class GetConnectorArgs {
  /// Connector Name.
  final pulumi.Input<String> connectorName;
  /// Azure Resource Group Name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectorArgs].
  /// [connectorName] Connector Name.
  /// [resourceGroupName] Azure Resource Group Name.
  GetConnectorArgs({
    required String connectorName,
    required String resourceGroupName,
  }) :
      connectorName = pulumi.Input.asInput<String>(connectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs(
      connectorName: map['connectorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

