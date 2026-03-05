// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_network_settings_response.dart';

/// The kubernetes settings information.
class K8sSettingsResponse {
  /// The kubernetes network settings information.
  final pulumi.Input<K8sNetworkSettingsResponse>? network;

  /// Creates a new [K8sSettingsResponse].
  /// [network] The kubernetes network settings information.
  K8sSettingsResponse({
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?pulumi.Input.mapOptionalInputValue<K8sNetworkSettingsResponse, Map<String, dynamic>>(network, (value) => value.toMap()),
    };
  }

  factory K8sSettingsResponse.fromMap(Map<String, dynamic> map) {
    return K8sSettingsResponse(
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(K8sNetworkSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

