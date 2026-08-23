// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'east_west_gateway_profile_response.dart';
import 'private_connect_profile_response.dart';

/// AppLinkMember connectivity profile.
class ConnectivityProfileResponse {
  /// East-West gateway profile.
  final pulumi.Input<EastWestGatewayProfileResponse>? eastWestGateway;
  /// Private connect profile.
  final pulumi.Input<PrivateConnectProfileResponse>? privateConnect;

  /// Creates a new [ConnectivityProfileResponse].
  /// [eastWestGateway] East-West gateway profile.
  /// [privateConnect] Private connect profile.
  const ConnectivityProfileResponse({
    this.eastWestGateway,
    this.privateConnect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eastWestGateway': ?pulumi.Input.mapOptionalInputValue<EastWestGatewayProfileResponse, Map<String, dynamic>>(eastWestGateway, (value) => value.toMap()),
      'privateConnect': ?pulumi.Input.mapOptionalInputValue<PrivateConnectProfileResponse, Map<String, dynamic>>(privateConnect, (value) => value.toMap()),
    };
  }

  factory ConnectivityProfileResponse.fromMap(Map<String, dynamic> map) {
    return ConnectivityProfileResponse(
      eastWestGateway: (() { final guardedValue = map['eastWestGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EastWestGatewayProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateConnect: (() { final guardedValue = map['privateConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateConnectProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
