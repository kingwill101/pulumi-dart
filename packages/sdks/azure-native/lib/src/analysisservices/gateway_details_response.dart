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
  GatewayDetailsResponse({
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
      dmtsClusterUri: (map['dmtsClusterUri'] as String).input(),
      gatewayObjectId: (map['gatewayObjectId'] as String).input(),
      gatewayResourceId: map['gatewayResourceId'] == null ? null : (map['gatewayResourceId'] as String).input(),
    );
  }
}

