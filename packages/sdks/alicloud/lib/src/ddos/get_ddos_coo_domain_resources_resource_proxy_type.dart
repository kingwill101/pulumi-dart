// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDdosCooDomainResourcesResourceProxyType {
  /// The forwarding port.
  final pulumi.Input<List<int>> proxyPorts;
  /// Protocol type.
  final pulumi.Input<String> proxyType;

  /// Creates a new [GetDdosCooDomainResourcesResourceProxyType].
  /// [proxyPorts] The forwarding port.
  /// [proxyType] Protocol type.
  GetDdosCooDomainResourcesResourceProxyType({
    required this.proxyPorts,
    required this.proxyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxyPorts': proxyPorts,
      'proxyType': proxyType,
    };
  }

  factory GetDdosCooDomainResourcesResourceProxyType.fromMap(Map<String, dynamic> map) {
    return GetDdosCooDomainResourcesResourceProxyType(
      proxyPorts: pulumi.Input.fromValue((map['proxyPorts'] as List).cast<int>()),
      proxyType: pulumi.Input.fromValue(map['proxyType'] as String),
    );
  }
}

