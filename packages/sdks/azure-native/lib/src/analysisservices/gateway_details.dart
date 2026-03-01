// ignore_for_file: unused_element, unnecessary_cast


/// The gateway details.
class GatewayDetails {
  /// Gateway resource to be associated with the server.
  final String? gatewayResourceId;

  /// Creates a new [GatewayDetails].
  /// [gatewayResourceId] Gateway resource to be associated with the server.
  GatewayDetails({
    this.gatewayResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayResourceId': ?gatewayResourceId,
    };
  }

  factory GatewayDetails.fromMap(Map<String, dynamic> map) {
    return GatewayDetails(
      gatewayResourceId: map['gatewayResourceId'] == null ? null : map['gatewayResourceId'] as String,
    );
  }
}

