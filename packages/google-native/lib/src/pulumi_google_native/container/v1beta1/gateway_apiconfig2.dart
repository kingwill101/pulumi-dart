// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_apiconfig_channel2.dart';

/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfig2 {
  /// The Gateway API release channel to use for Gateway API.
  final GatewayAPIConfigChannel2? channel;

  GatewayAPIConfig2({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final channelValue = channel;
    if (channelValue != null) {
      map['channel'] = channelValue.value;
    }
    return map;
  }

  factory GatewayAPIConfig2.fromMap(Map<String, dynamic> map) {
    return GatewayAPIConfig2(
      channel: map['channel'] == null
          ? null
          : GatewayAPIConfigChannel2.fromValue(map['channel'] as String),
    );
  }
}
