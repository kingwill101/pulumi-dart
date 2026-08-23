// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPointVpcConfiguration {
  /// VPC ID from which the access point allows connections.
  final pulumi.Input<String> vpcId;

  /// Creates a new [AccessPointVpcConfiguration].
  /// [vpcId] VPC ID from which the access point allows connections.
  const AccessPointVpcConfiguration({
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': vpcId,
    };
  }

  factory AccessPointVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return AccessPointVpcConfiguration(
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
