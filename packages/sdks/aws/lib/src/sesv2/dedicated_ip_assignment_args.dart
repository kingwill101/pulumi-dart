// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_dedicated_ip_assignment_dedicated_ip_assignment_args_doc}
/// The set of arguments for DedicatedIpAssignment.
/// {@endtemplate}
/// {@macro pulumi_sesv2_dedicated_ip_assignment_dedicated_ip_assignment_args_doc}
class DedicatedIpAssignmentArgs {
  /// Dedicated IP address.
  final pulumi.Input<String> destinationPoolName;
  /// Dedicated IP address.
  final pulumi.Input<String> ip;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DedicatedIpAssignmentArgs].
  /// [destinationPoolName] Dedicated IP address.
  /// [ip] Dedicated IP address.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DedicatedIpAssignmentArgs({
    required this.destinationPoolName,
    required this.ip,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPoolName': destinationPoolName,
      'ip': ip,
      'region': ?region,
    };
  }

  factory DedicatedIpAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedIpAssignmentArgs(
      destinationPoolName: pulumi.Input.fromValue(map['destinationPoolName'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

