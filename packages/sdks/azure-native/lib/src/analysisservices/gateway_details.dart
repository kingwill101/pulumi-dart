// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The gateway details.
class GatewayDetails {
  /// Gateway resource to be associated with the server.
  final pulumi.Input<String>? gatewayResourceId;

  /// Creates a new [GatewayDetails].
  /// [gatewayResourceId] Gateway resource to be associated with the server.
  const GatewayDetails({
    this.gatewayResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayResourceId': ?gatewayResourceId,
    };
  }

  factory GatewayDetails.fromMap(Map<String, dynamic> map) {
    return GatewayDetails(
      gatewayResourceId: (() { final guardedValue = map['gatewayResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

