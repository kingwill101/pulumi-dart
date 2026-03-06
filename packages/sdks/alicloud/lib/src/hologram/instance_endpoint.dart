// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceEndpoint {
  /// Some old instances have both AnyTunnel and SingleTunnel enabled. When switching from AnyTunnel to SingleTunnel, the endpoints of both are retained. Therefore, one more field is required to store the Endpoint.
  final pulumi.Input<String>? alternativeEndpoints;
  /// Whether to turn on the network.
  final pulumi.Input<bool>? enabled;
  /// Domain name.
  final pulumi.Input<String>? endpoint;
  /// The network type.
  final pulumi.Input<String>? type;
  /// VPC primary key.
  final pulumi.Input<String>? vpcId;
  /// The vpc instance ID.
  final pulumi.Input<String>? vpcInstanceId;
  /// The ID of the virtual switch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [InstanceEndpoint].
  /// [alternativeEndpoints] Some old instances have both AnyTunnel and SingleTunnel enabled. When switching from AnyTunnel to SingleTunnel, the endpoints of both are retained. Therefore, one more field is required to store the Endpoint.
  /// [enabled] Whether to turn on the network.
  /// [endpoint] Domain name.
  /// [type] The network type.
  /// [vpcId] VPC primary key.
  /// [vpcInstanceId] The vpc instance ID.
  /// [vswitchId] The ID of the virtual switch.
  const InstanceEndpoint({
    this.alternativeEndpoints,
    this.enabled,
    this.endpoint,
    this.type,
    this.vpcId,
    this.vpcInstanceId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeEndpoints': ?alternativeEndpoints,
      'enabled': ?enabled,
      'endpoint': ?endpoint,
      'type': ?type,
      'vpcId': ?vpcId,
      'vpcInstanceId': ?vpcInstanceId,
      'vswitchId': ?vswitchId,
    };
  }

  factory InstanceEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceEndpoint(
      alternativeEndpoints: (() { final guardedValue = map['alternativeEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcInstanceId: (() { final guardedValue = map['vpcInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

