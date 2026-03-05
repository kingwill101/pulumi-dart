// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallSubnetMapping {
  /// The unique identifier for the subnet.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetFirewallSubnetMapping].
  /// [subnetId] The unique identifier for the subnet.
  GetFirewallSubnetMapping({
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': subnetId,
    };
  }

  factory GetFirewallSubnetMapping.fromMap(Map<String, dynamic> map) {
    return GetFirewallSubnetMapping(
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

