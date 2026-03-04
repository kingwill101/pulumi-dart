// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IpSetIpSetDescriptor {
  /// The string like IPV4 or IPV6.
  final pulumi.Input<String> type;

  /// The CIDR notation.
  final pulumi.Input<String> value;

  /// Creates a new [IpSetIpSetDescriptor].
  /// [type] The string like IPV4 or IPV6.
  /// [value] The CIDR notation.
  IpSetIpSetDescriptor({required this.type, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'value': value};
  }

  factory IpSetIpSetDescriptor.fromMap(Map<String, dynamic> map) {
    return IpSetIpSetDescriptor(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
