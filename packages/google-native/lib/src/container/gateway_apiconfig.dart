// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_apiconfig_channel.dart';

/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfig {
  /// The Gateway API release channel to use for Gateway API.
  final GatewayAPIConfigChannel? channel;

  /// Creates a new [GatewayAPIConfig].
  /// [channel] The Gateway API release channel to use for Gateway API.
  GatewayAPIConfig({
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

  factory GatewayAPIConfig.fromMap(Map<String, dynamic> map) {
    return GatewayAPIConfig(
      channel: map['channel'] == null
          ? null
          : GatewayAPIConfigChannel.fromValue(map['channel'] as String),
    );
  }
}
