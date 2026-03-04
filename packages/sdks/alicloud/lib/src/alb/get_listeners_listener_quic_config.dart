// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenersListenerQuicConfig {
  /// The ID of the QUIC listener to be associated. If QuicUpgradeEnabled is set to true, this parameter is required. Only HTTPS listeners support this parameter.
  final pulumi.Input<String> quicListenerId;

  /// Indicates whether quic upgrade is enabled. Valid values: true and false. Default value: false.
  final pulumi.Input<bool> quicUpgradeEnabled;

  /// Creates a new [GetListenersListenerQuicConfig].
  /// [quicListenerId] The ID of the QUIC listener to be associated. If QuicUpgradeEnabled is set to true, this parameter is required. Only HTTPS listeners support this parameter.
  /// [quicUpgradeEnabled] Indicates whether quic upgrade is enabled. Valid values: true and false. Default value: false.
  GetListenersListenerQuicConfig({
    required this.quicListenerId,
    required this.quicUpgradeEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quicListenerId': quicListenerId,
      'quicUpgradeEnabled': quicUpgradeEnabled,
    };
  }

  factory GetListenersListenerQuicConfig.fromMap(Map<String, dynamic> map) {
    return GetListenersListenerQuicConfig(
      quicListenerId: pulumi.Input.fromValue(map['quicListenerId'] as String),
      quicUpgradeEnabled: pulumi.Input.fromValue(
        map['quicUpgradeEnabled'] as bool,
      ),
    );
  }
}
