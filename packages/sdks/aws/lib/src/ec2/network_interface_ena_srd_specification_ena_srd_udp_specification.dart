// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification {
  /// Indicates whether UDP traffic uses ENA Express. Requires `enaSrdEnabled` to be `true`.
  final pulumi.Input<bool?>? enaSrdUdpEnabled;

  /// Creates a new [NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification].
  /// [enaSrdUdpEnabled] Indicates whether UDP traffic uses ENA Express. Requires `enaSrdEnabled` to be `true`.
  const NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification({
    this.enaSrdUdpEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enaSrdUdpEnabled': ?enaSrdUdpEnabled,
    };
  }

  factory NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification(
      enaSrdUdpEnabled: (() { final guardedValue = map['enaSrdUdpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
