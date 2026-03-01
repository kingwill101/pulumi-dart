// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_apiconfig_channel_container_v1beta1.dart';

/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfigContainerV1beta1 {
  /// The Gateway API release channel to use for Gateway API.
  final GatewayAPIConfigChannelContainerV1beta1? channel;

  /// Creates a new [GatewayAPIConfigContainerV1beta1].
  /// [channel] The Gateway API release channel to use for Gateway API.
  GatewayAPIConfigContainerV1beta1({this.channel});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel == null ? null : channel!.value,
    };
  }

  factory GatewayAPIConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GatewayAPIConfigContainerV1beta1(
      channel: map['channel'] == null
          ? null
          : GatewayAPIConfigChannelContainerV1beta1.fromValue(
              map['channel'] as String,
            ),
    );
  }
}
