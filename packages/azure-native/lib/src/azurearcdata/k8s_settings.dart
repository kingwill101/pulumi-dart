// ignore_for_file: unused_element, unnecessary_cast

import 'k8s_network_settings.dart';

/// The kubernetes settings information.
class K8sSettings {
  /// The kubernetes network settings information.
  final K8sNetworkSettings? network;

  /// Creates a new [K8sSettings].
  /// [network] The kubernetes network settings information.
  K8sSettings({
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network == null ? null : network!.toMap(),
    };
  }

  factory K8sSettings.fromMap(Map<String, dynamic> map) {
    return K8sSettings(
      network: map['network'] == null ? null : K8sNetworkSettings.fromMap((map['network'] as Map).cast<String, dynamic>()),
    );
  }
}

