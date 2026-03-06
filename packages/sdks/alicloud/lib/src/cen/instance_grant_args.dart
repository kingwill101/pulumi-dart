// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_instance_grant_instance_grant_args_doc}
/// The set of arguments for InstanceGrant.
/// {@endtemplate}
/// {@macro pulumi_cen_instance_grant_instance_grant_args_doc}
class InstanceGrantArgs {
  /// The ID of the CEN.
  final pulumi.Input<String> cenId;
  /// The owner UID of the  CEN which the child instance granted to.
  final pulumi.Input<String> cenOwnerId;
  /// The ID of the child instance to grant.
  final pulumi.Input<String> childInstanceId;

  /// Creates a new [InstanceGrantArgs].
  /// [cenId] The ID of the CEN.
  /// [cenOwnerId] The owner UID of the  CEN which the child instance granted to.
  /// [childInstanceId] The ID of the child instance to grant.
  const InstanceGrantArgs({
    required this.cenId,
    required this.cenOwnerId,
    required this.childInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'cenOwnerId': cenOwnerId,
      'childInstanceId': childInstanceId,
    };
  }

  factory InstanceGrantArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGrantArgs(
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      cenOwnerId: pulumi.Input.fromValue(map['cenOwnerId'] as String),
      childInstanceId: pulumi.Input.fromValue(map['childInstanceId'] as String),
    );
  }
}

