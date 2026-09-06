// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_adapter.dart';

/// Network configuration.
class NetworkConfiguration {
  /// List of network adapters.
  final pulumi.Input<List<NetworkAdapter>?>? networkAdapters;

  /// Creates a new [NetworkConfiguration].
  /// [networkAdapters] List of network adapters.
  const NetworkConfiguration({
    this.networkAdapters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAdapters': ?pulumi.Input.mapOptionalInputValue<List<NetworkAdapter>, List<Map<String, dynamic>>>(networkAdapters, (value) => pulumi.Input.encodeList<NetworkAdapter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConfiguration(
      networkAdapters: (() { final guardedValue = map['networkAdapters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkAdapter>(guardedValue, (value) => NetworkAdapter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
