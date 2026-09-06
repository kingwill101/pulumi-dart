// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_intune_get_io_mampolicy_by_name_args_doc}
/// Arguments for getIoMAMPolicyByName.
/// {@endtemplate}
/// {@macro pulumi_intune_get_io_mampolicy_by_name_args_doc}
class GetIoMAMPolicyByNameArgs {
  /// Location hostName for the tenant
  final pulumi.Input<String> hostName;
  /// Unique name for the policy
  final pulumi.Input<String> policyName;
  /// select specific fields in entity.
  final pulumi.Input<String?>? select;

  /// Creates a new [GetIoMAMPolicyByNameArgs].
  /// [hostName] Location hostName for the tenant
  /// [policyName] Unique name for the policy
  /// [select] select specific fields in entity.
  const GetIoMAMPolicyByNameArgs({
    required this.hostName,
    required this.policyName,
    this.select,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'policyName': policyName,
      'select': ?select,
    };
  }

  factory GetIoMAMPolicyByNameArgs.fromMap(Map<String, dynamic> map) {
    return GetIoMAMPolicyByNameArgs(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      select: (() { final guardedValue = map['select']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
