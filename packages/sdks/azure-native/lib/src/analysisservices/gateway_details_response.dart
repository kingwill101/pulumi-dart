// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The gateway details.
class GatewayDetailsResponse {
  /// Uri of the DMTS cluster.
  final pulumi.Input<String> dmtsClusterUri;
  /// Gateway object id from in the DMTS cluster for the gateway resource.
  final pulumi.Input<String> gatewayObjectId;
  /// Gateway resource to be associated with the server.
  final pulumi.Input<String>? gatewayResourceId;

  /// Creates a new [GatewayDetailsResponse].
  /// [dmtsClusterUri] Uri of the DMTS cluster.
  /// [gatewayObjectId] Gateway object id from in the DMTS cluster for the gateway resource.
  /// [gatewayResourceId] Gateway resource to be associated with the server.
  const GatewayDetailsResponse({
    required this.dmtsClusterUri,
    required this.gatewayObjectId,
    this.gatewayResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dmtsClusterUri': dmtsClusterUri,
      'gatewayObjectId': gatewayObjectId,
      'gatewayResourceId': ?gatewayResourceId,
    };
  }

  factory GatewayDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GatewayDetailsResponse(
      dmtsClusterUri: pulumi.Input.fromValue(map['dmtsClusterUri'] as String),
      gatewayObjectId: pulumi.Input.fromValue(map['gatewayObjectId'] as String),
      gatewayResourceId: (() { final guardedValue = map['gatewayResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
