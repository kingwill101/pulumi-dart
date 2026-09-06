// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'east_west_gateway_profile.dart';
import 'private_connect_profile.dart';

/// AppLinkMember connectivity profile.
class ConnectivityProfile {
  /// East-West gateway profile.
  final pulumi.Input<EastWestGatewayProfile?>? eastWestGateway;
  /// Private connect profile.
  final pulumi.Input<PrivateConnectProfile?>? privateConnect;

  /// Creates a new [ConnectivityProfile].
  /// [eastWestGateway] East-West gateway profile.
  /// [privateConnect] Private connect profile.
  const ConnectivityProfile({
    this.eastWestGateway,
    this.privateConnect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eastWestGateway': ?pulumi.Input.mapOptionalInputValue<EastWestGatewayProfile, Map<String, dynamic>>(eastWestGateway, (value) => value.toMap()),
      'privateConnect': ?pulumi.Input.mapOptionalInputValue<PrivateConnectProfile, Map<String, dynamic>>(privateConnect, (value) => value.toMap()),
    };
  }

  factory ConnectivityProfile.fromMap(Map<String, dynamic> map) {
    return ConnectivityProfile(
      eastWestGateway: (() { final guardedValue = map['eastWestGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EastWestGatewayProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateConnect: (() { final guardedValue = map['privateConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateConnectProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
