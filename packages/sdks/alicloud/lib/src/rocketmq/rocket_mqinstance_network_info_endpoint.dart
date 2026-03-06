// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RocketMQInstanceNetworkInfoEndpoint {
  /// Access point type.
  final pulumi.Input<String>? endpointType;
  /// Access point address.
  final pulumi.Input<String>? endpointUrl;
  /// White list of access addresses.
  final pulumi.Input<List<String>>? ipWhiteLists;

  /// Creates a new [RocketMQInstanceNetworkInfoEndpoint].
  /// [endpointType] Access point type.
  /// [endpointUrl] Access point address.
  /// [ipWhiteLists] White list of access addresses.
  const RocketMQInstanceNetworkInfoEndpoint({
    this.endpointType,
    this.endpointUrl,
    this.ipWhiteLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': ?endpointType,
      'endpointUrl': ?endpointUrl,
      'ipWhiteLists': ?ipWhiteLists,
    };
  }

  factory RocketMQInstanceNetworkInfoEndpoint.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceNetworkInfoEndpoint(
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUrl: (() { final guardedValue = map['endpointUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipWhiteLists: (() { final guardedValue = map['ipWhiteLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

