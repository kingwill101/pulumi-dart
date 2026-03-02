// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RocketMQInstanceNetworkInfoVpcInfoVswitch {
  /// VPC switch id.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [RocketMQInstanceNetworkInfoVpcInfoVswitch].
  /// [vswitchId] VPC switch id.
  RocketMQInstanceNetworkInfoVpcInfoVswitch({
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vswitchId': ?vswitchId,
    };
  }

  factory RocketMQInstanceNetworkInfoVpcInfoVswitch.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceNetworkInfoVpcInfoVswitch(
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

