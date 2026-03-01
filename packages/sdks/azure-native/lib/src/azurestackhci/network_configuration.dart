// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_adapter.dart';

/// Network configuration.
class NetworkConfiguration {
  /// List of network adapters.
  final List<NetworkAdapter>? networkAdapters;

  /// Creates a new [NetworkConfiguration].
  /// [networkAdapters] List of network adapters.
  NetworkConfiguration({
    this.networkAdapters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAdapters': ?networkAdapters == null ? null : pulumi.Input.encodeList<NetworkAdapter, Map<String, dynamic>>(networkAdapters!, (value) => value.toMap()),
    };
  }

  factory NetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConfiguration(
      networkAdapters: map['networkAdapters'] == null ? null : pulumi.Input.decodeList<NetworkAdapter>(map['networkAdapters'], (value) => NetworkAdapter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

