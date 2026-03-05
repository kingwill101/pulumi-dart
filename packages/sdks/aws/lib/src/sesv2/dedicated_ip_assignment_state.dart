// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DedicatedIpAssignment resources.
class DedicatedIpAssignmentState {
  /// Dedicated IP address.
  final pulumi.Input<String>? destinationPoolName;
  /// Dedicated IP address.
  final pulumi.Input<String>? ip;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DedicatedIpAssignmentState].
  /// [destinationPoolName] Dedicated IP address.
  /// [ip] Dedicated IP address.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DedicatedIpAssignmentState({
    this.destinationPoolName,
    this.ip,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPoolName': ?destinationPoolName,
      'ip': ?ip,
      'region': ?region,
    };
  }

  factory DedicatedIpAssignmentState.fromMap(Map<String, dynamic> map) {
    return DedicatedIpAssignmentState(
      destinationPoolName: (() { final guardedValue = map['destinationPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

