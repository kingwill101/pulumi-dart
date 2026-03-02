// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_network_settings.dart';

/// The kubernetes settings information.
class K8sSettings {
  /// The kubernetes network settings information.
  final pulumi.Input<K8sNetworkSettings>? network;

  /// Creates a new [K8sSettings].
  /// [network] The kubernetes network settings information.
  K8sSettings({
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?pulumi.Input.mapOptionalInputValue<K8sNetworkSettings, Map<String, dynamic>>(network, (value) => value.toMap()),
    };
  }

  factory K8sSettings.fromMap(Map<String, dynamic> map) {
    return K8sSettings(
      network: map['network'] == null ? null : (K8sNetworkSettings.fromMap((map['network']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

