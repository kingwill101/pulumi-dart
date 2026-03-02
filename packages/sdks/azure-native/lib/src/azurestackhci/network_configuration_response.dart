// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_adapter_response.dart';

/// Network configuration.
class NetworkConfigurationResponse {
  /// List of network adapters.
  final pulumi.Input<List<NetworkAdapterResponse>>? networkAdapters;

  /// Creates a new [NetworkConfigurationResponse].
  /// [networkAdapters] List of network adapters.
  NetworkConfigurationResponse({
    this.networkAdapters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAdapters': ?pulumi.Input.mapOptionalInputValue<List<NetworkAdapterResponse>, List<Map<String, dynamic>>>(networkAdapters, (value) => pulumi.Input.encodeList<NetworkAdapterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigurationResponse(
      networkAdapters: map['networkAdapters'] == null ? null : (pulumi.Input.decodeList<NetworkAdapterResponse>(map['networkAdapters'], (value) => NetworkAdapterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

