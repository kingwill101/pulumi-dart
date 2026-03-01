// ignore_for_file: unused_element, unnecessary_cast

import 'k8s_network_settings_response.dart';

/// The kubernetes settings information.
class K8sSettingsResponse {
  /// The kubernetes network settings information.
  final K8sNetworkSettingsResponse? network;

  /// Creates a new [K8sSettingsResponse].
  /// [network] The kubernetes network settings information.
  K8sSettingsResponse({
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network == null ? null : network!.toMap(),
    };
  }

  factory K8sSettingsResponse.fromMap(Map<String, dynamic> map) {
    return K8sSettingsResponse(
      network: map['network'] == null ? null : K8sNetworkSettingsResponse.fromMap((map['network'] as Map).cast<String, dynamic>()),
    );
  }
}

