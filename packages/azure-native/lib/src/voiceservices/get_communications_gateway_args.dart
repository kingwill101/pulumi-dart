// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_voiceservices_get_communications_gateway_args_doc}
/// Arguments for getCommunicationsGateway.
/// {@endtemplate}
/// {@macro pulumi_voiceservices_get_communications_gateway_args_doc}
class GetCommunicationsGatewayArgs {
  /// Unique identifier for this deployment
  final pulumi.Input<String> communicationsGatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCommunicationsGatewayArgs].
  /// [communicationsGatewayName] Unique identifier for this deployment
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCommunicationsGatewayArgs({
    required String communicationsGatewayName,
    required String resourceGroupName,
  }) :
      communicationsGatewayName = pulumi.Input.asInput<String>(communicationsGatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationsGatewayName': communicationsGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCommunicationsGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetCommunicationsGatewayArgs(
      communicationsGatewayName: map['communicationsGatewayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

