// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connectivity group item.
class ConnectivityGroupItemResponse {
  /// Group connectivity type.
  final pulumi.Input<String> groupConnectivity;
  /// Flag if global is supported.
  final pulumi.Input<String>? isGlobal;
  /// Network group Id.
  final pulumi.Input<String> networkGroupId;
  /// Flag if need to use hub gateway.
  final pulumi.Input<String>? useHubGateway;

  /// Creates a new [ConnectivityGroupItemResponse].
  /// [groupConnectivity] Group connectivity type.
  /// [isGlobal] Flag if global is supported.
  /// [networkGroupId] Network group Id.
  /// [useHubGateway] Flag if need to use hub gateway.
  const ConnectivityGroupItemResponse({
    required this.groupConnectivity,
    this.isGlobal,
    required this.networkGroupId,
    this.useHubGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupConnectivity': groupConnectivity,
      'isGlobal': ?isGlobal,
      'networkGroupId': networkGroupId,
      'useHubGateway': ?useHubGateway,
    };
  }

  factory ConnectivityGroupItemResponse.fromMap(Map<String, dynamic> map) {
    return ConnectivityGroupItemResponse(
      groupConnectivity: pulumi.Input.fromValue(map['groupConnectivity'] as String),
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkGroupId: pulumi.Input.fromValue(map['networkGroupId'] as String),
      useHubGateway: (() { final guardedValue = map['useHubGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
