// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectivityGroupItemlistActiveConnectivityConfigurationResponse {
  /// Group connectivity type.
  final pulumi.Input<String?>? groupConnectivity;
  /// Flag if global is supported.
  final pulumi.Input<String?>? isGlobal;
  /// Network group Id.
  final pulumi.Input<String?>? networkGroupId;
  /// Flag if need to use hub gateway.
  final pulumi.Input<String?>? useHubGateway;

  /// Creates a new [ConnectivityGroupItemlistActiveConnectivityConfigurationResponse].
  /// [groupConnectivity] Group connectivity type.
  /// [isGlobal] Flag if global is supported.
  /// [networkGroupId] Network group Id.
  /// [useHubGateway] Flag if need to use hub gateway.
  const ConnectivityGroupItemlistActiveConnectivityConfigurationResponse({
    this.groupConnectivity,
    this.isGlobal,
    this.networkGroupId,
    this.useHubGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupConnectivity': ?groupConnectivity,
      'isGlobal': ?isGlobal,
      'networkGroupId': ?networkGroupId,
      'useHubGateway': ?useHubGateway,
    };
  }

  factory ConnectivityGroupItemlistActiveConnectivityConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConnectivityGroupItemlistActiveConnectivityConfigurationResponse(
      groupConnectivity: (() { final guardedValue = map['groupConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkGroupId: (() { final guardedValue = map['networkGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useHubGateway: (() { final guardedValue = map['useHubGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
