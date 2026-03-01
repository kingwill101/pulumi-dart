// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_connection_gateway_args_doc}
/// Arguments for getConnectionGateway.
/// {@endtemplate}
/// {@macro pulumi_web_get_connection_gateway_args_doc}
class GetConnectionGatewayArgs {
  /// The connection gateway name
  final pulumi.Input<String> connectionGatewayName;
  /// The resource group
  final pulumi.Input<String> resourceGroupName;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetConnectionGatewayArgs].
  /// [connectionGatewayName] The connection gateway name
  /// [resourceGroupName] The resource group
  /// [subscriptionId] Subscription Id
  GetConnectionGatewayArgs({
    required String connectionGatewayName,
    required String resourceGroupName,
    String? subscriptionId,
  }) :
      connectionGatewayName = pulumi.Input.asInput<String>(connectionGatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionGatewayName': connectionGatewayName,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetConnectionGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionGatewayArgs(
      connectionGatewayName: map['connectionGatewayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

