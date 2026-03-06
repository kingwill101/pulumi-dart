// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VpcConfiguration
class VpcConfiguration {
  /// If this field is specified, this access point will only allow connections from the specified VPC ID.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcConfiguration].
  /// [vpcId] If this field is specified, this access point will only allow connections from the specified VPC ID.
  const VpcConfiguration({
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': ?vpcId,
    };
  }

  factory VpcConfiguration.fromMap(Map<String, dynamic> map) {
    return VpcConfiguration(
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

