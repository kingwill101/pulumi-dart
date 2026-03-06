// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPointVpcConfiguration {
  /// The vpc ID is required only when the value of NetworkOrigin is VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [AccessPointVpcConfiguration].
  /// [vpcId] The vpc ID is required only when the value of NetworkOrigin is VPC.
  const AccessPointVpcConfiguration({
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': ?vpcId,
    };
  }

  factory AccessPointVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return AccessPointVpcConfiguration(
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

