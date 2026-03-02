// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessPointVpcConfiguration {
  /// Access point will only allow connections from this VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetAccessPointVpcConfiguration].
  /// [vpcId] Access point will only allow connections from this VPC.
  GetAccessPointVpcConfiguration({
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': vpcId,
    };
  }

  factory GetAccessPointVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAccessPointVpcConfiguration(
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

