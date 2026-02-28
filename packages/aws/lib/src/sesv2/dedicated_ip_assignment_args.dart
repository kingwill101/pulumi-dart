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
  DedicatedIpAssignmentArgs({
    required String destinationPoolName,
    required String ip,
    String? region,
  })  : destinationPoolName = pulumi.Input.asInput<String>(destinationPoolName),
        ip = pulumi.Input.asInput<String>(ip),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationPoolName'] = destinationPoolName;
    map['ip'] = ip;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DedicatedIpAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedIpAssignmentArgs(
      destinationPoolName: map['destinationPoolName'] as String,
      ip: map['ip'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
