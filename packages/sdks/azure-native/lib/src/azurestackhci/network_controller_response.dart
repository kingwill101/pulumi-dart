// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// network controller config for SDN Integration to deploy AzureStackHCI Cluster.
class NetworkControllerResponse {
  /// macAddressPoolStart of network controller used for SDN Integration.
  final pulumi.Input<String>? macAddressPoolStart;
  /// macAddressPoolStop of network controller used for SDN Integration.
  final pulumi.Input<String>? macAddressPoolStop;
  /// NetworkVirtualizationEnabled of network controller used for SDN Integration.
  final pulumi.Input<bool>? networkVirtualizationEnabled;

  /// Creates a new [NetworkControllerResponse].
  /// [macAddressPoolStart] macAddressPoolStart of network controller used for SDN Integration.
  /// [macAddressPoolStop] macAddressPoolStop of network controller used for SDN Integration.
  /// [networkVirtualizationEnabled] NetworkVirtualizationEnabled of network controller used for SDN Integration.
  NetworkControllerResponse({
    this.macAddressPoolStart,
    this.macAddressPoolStop,
    this.networkVirtualizationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'macAddressPoolStart': ?macAddressPoolStart,
      'macAddressPoolStop': ?macAddressPoolStop,
      'networkVirtualizationEnabled': ?networkVirtualizationEnabled,
    };
  }

  factory NetworkControllerResponse.fromMap(Map<String, dynamic> map) {
    return NetworkControllerResponse(
      macAddressPoolStart: map['macAddressPoolStart'] == null ? null : (map['macAddressPoolStart'] as String).input(),
      macAddressPoolStop: map['macAddressPoolStop'] == null ? null : (map['macAddressPoolStop'] as String).input(),
      networkVirtualizationEnabled: map['networkVirtualizationEnabled'] == null ? null : (map['networkVirtualizationEnabled'] as bool).input(),
    );
  }
}

