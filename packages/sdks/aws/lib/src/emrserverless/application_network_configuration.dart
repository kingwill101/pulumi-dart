// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationNetworkConfiguration {
  /// The array of security group Ids for customer VPC connectivity.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The array of subnet Ids for customer VPC connectivity.
  final pulumi.Input<List<String>>? subnetIds;

  /// Creates a new [ApplicationNetworkConfiguration].
  /// [securityGroupIds] The array of security group Ids for customer VPC connectivity.
  /// [subnetIds] The array of subnet Ids for customer VPC connectivity.
  const ApplicationNetworkConfiguration({
    this.securityGroupIds,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
    };
  }

  factory ApplicationNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationNetworkConfiguration(
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

