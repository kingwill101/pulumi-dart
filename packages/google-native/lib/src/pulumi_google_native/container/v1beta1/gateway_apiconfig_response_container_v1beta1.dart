// ignore_for_file: unused_element, unnecessary_cast

/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfigResponseContainerV1beta1 {
  /// The Gateway API release channel to use for Gateway API.
  final String channel;

  GatewayAPIConfigResponseContainerV1beta1({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channel'] = channel;
    return map;
  }

  factory GatewayAPIConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GatewayAPIConfigResponseContainerV1beta1(
      channel: map['channel'] as String,
    );
  }
}
