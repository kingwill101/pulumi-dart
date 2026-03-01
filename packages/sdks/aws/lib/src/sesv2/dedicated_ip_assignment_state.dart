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
    pulumi.Output<String>? destinationPoolName,
    pulumi.Output<String>? ip,
    pulumi.Output<String>? region,
  }) :
      destinationPoolName = pulumi.Input.asOptionalInput<String>(destinationPoolName),
      ip = pulumi.Input.asOptionalInput<String>(ip),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPoolName': ?destinationPoolName,
      'ip': ?ip,
      'region': ?region,
    };
  }

  factory DedicatedIpAssignmentState.fromMap(Map<String, dynamic> map) {
    return DedicatedIpAssignmentState(
      destinationPoolName: map['destinationPoolName'] == null ? null : pulumi.Output.create<String>(map['destinationPoolName'] as String),
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

