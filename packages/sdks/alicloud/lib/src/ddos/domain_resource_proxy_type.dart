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
  DomainResourceProxyType({required this.proxyPorts, this.proxyType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'proxyPorts': proxyPorts, 'proxyType': ?proxyType};
  }

  factory DomainResourceProxyType.fromMap(Map<String, dynamic> map) {
    return DomainResourceProxyType(
      proxyPorts: pulumi.Input.fromValue(
        (map['proxyPorts'] as List).cast<int>(),
      ),
      proxyType: (() {
        final guardedValue = map['proxyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
