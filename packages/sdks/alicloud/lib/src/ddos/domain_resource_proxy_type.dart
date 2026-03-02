// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainResourceProxyType {
  /// The port numbers.
  final pulumi.Input<List<int>> proxyPorts;
  /// The type of the protocol. Valid values:
  final pulumi.Input<String>? proxyType;

  /// Creates a new [DomainResourceProxyType].
  /// [proxyPorts] The port numbers.
  /// [proxyType] The type of the protocol. Valid values:
  DomainResourceProxyType({
    required this.proxyPorts,
    this.proxyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxyPorts': proxyPorts,
      'proxyType': ?proxyType,
    };
  }

  factory DomainResourceProxyType.fromMap(Map<String, dynamic> map) {
    return DomainResourceProxyType(
      proxyPorts: ((map['proxyPorts'] as List).cast<int>()).input(),
      proxyType: map['proxyType'] == null ? null : (map['proxyType']! as String).input(),
    );
  }
}

