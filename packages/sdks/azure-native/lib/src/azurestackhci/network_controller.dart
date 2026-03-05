// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// network controller config for SDN Integration to deploy AzureStackHCI Cluster.
class NetworkController {
  /// macAddressPoolStart of network controller used for SDN Integration.
  final pulumi.Input<String>? macAddressPoolStart;
  /// macAddressPoolStop of network controller used for SDN Integration.
  final pulumi.Input<String>? macAddressPoolStop;
  /// NetworkVirtualizationEnabled of network controller used for SDN Integration.
  final pulumi.Input<bool>? networkVirtualizationEnabled;

  /// Creates a new [NetworkController].
  /// [macAddressPoolStart] macAddressPoolStart of network controller used for SDN Integration.
  /// [macAddressPoolStop] macAddressPoolStop of network controller used for SDN Integration.
  /// [networkVirtualizationEnabled] NetworkVirtualizationEnabled of network controller used for SDN Integration.
  NetworkController({
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

  factory NetworkController.fromMap(Map<String, dynamic> map) {
    return NetworkController(
      macAddressPoolStart: (() { final guardedValue = map['macAddressPoolStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddressPoolStop: (() { final guardedValue = map['macAddressPoolStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkVirtualizationEnabled: (() { final guardedValue = map['networkVirtualizationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

