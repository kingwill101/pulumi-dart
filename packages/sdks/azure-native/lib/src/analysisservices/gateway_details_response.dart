// ignore_for_file: unused_element, unnecessary_cast


/// The gateway details.
class GatewayDetailsResponse {
  /// Uri of the DMTS cluster.
  final String dmtsClusterUri;
  /// Gateway object id from in the DMTS cluster for the gateway resource.
  final String gatewayObjectId;
  /// Gateway resource to be associated with the server.
  final String? gatewayResourceId;

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
      dmtsClusterUri: map['dmtsClusterUri'] as String,
      gatewayObjectId: map['gatewayObjectId'] as String,
      gatewayResourceId: map['gatewayResourceId'] == null ? null : map['gatewayResourceId'] as String,
    );
  }
}

