// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification {
  /// Whether UDP traffic uses ENA Express.
  final pulumi.Input<bool> enaSrdUdpEnabled;

  /// Creates a new [GetNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification].
  /// [enaSrdUdpEnabled] Whether UDP traffic uses ENA Express.
  const GetNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification({
    required this.enaSrdUdpEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enaSrdUdpEnabled': enaSrdUdpEnabled,
    };
  }

  factory GetNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification(
      enaSrdUdpEnabled: pulumi.Input.fromValue(map['enaSrdUdpEnabled'] as bool),
    );
  }
}
