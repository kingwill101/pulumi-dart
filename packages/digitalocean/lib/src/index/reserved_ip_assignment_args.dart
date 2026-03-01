// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_reserved_ip_assignment_reserved_ip_assignment_args_doc}
/// The set of arguments for ReservedIpAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_reserved_ip_assignment_reserved_ip_assignment_args_doc}
class ReservedIpAssignmentArgs {
  /// The ID of Droplet that the reserved IP will be assigned to.
  final pulumi.Input<int> dropletId;
  /// The reserved IP to assign to the Droplet.
  final pulumi.Input<String> ipAddress;

  /// Creates a new [ReservedIpAssignmentArgs].
  /// [dropletId] The ID of Droplet that the reserved IP will be assigned to.
  /// [ipAddress] The reserved IP to assign to the Droplet.
  ReservedIpAssignmentArgs({
    required int dropletId,
    required String ipAddress,
  }) :
      dropletId = pulumi.Input.asInput<int>(dropletId),
      ipAddress = pulumi.Input.asInput<String>(ipAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': dropletId,
      'ipAddress': ipAddress,
    };
  }

  factory ReservedIpAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ReservedIpAssignmentArgs(
      dropletId: map['dropletId'] as int,
      ipAddress: map['ipAddress'] as String,
    );
  }
}

