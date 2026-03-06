// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_adapter_response.dart';

/// Network configuration.
class NetworkConfigurationResponse {
  /// List of network adapters.
  final pulumi.Input<List<NetworkAdapterResponse>>? networkAdapters;

  /// Creates a new [NetworkConfigurationResponse].
  /// [networkAdapters] List of network adapters.
  const NetworkConfigurationResponse({
    this.networkAdapters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAdapters': ?pulumi.Input.mapOptionalInputValue<List<NetworkAdapterResponse>, List<Map<String, dynamic>>>(networkAdapters, (value) => pulumi.Input.encodeList<NetworkAdapterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigurationResponse(
      networkAdapters: (() { final guardedValue = map['networkAdapters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkAdapterResponse>(guardedValue, (value) => NetworkAdapterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

