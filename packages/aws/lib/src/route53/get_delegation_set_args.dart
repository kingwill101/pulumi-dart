// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_delegation_set_get_delegation_set_args_doc}
/// Arguments for getDelegationSet.
/// {@endtemplate}
/// {@macro pulumi_route53_get_delegation_set_get_delegation_set_args_doc}
class GetDelegationSetArgs {
  /// Delegation set ID.
  final pulumi.Input<String> id;

  /// Creates a new [GetDelegationSetArgs].
  /// [id] Delegation set ID.
  GetDelegationSetArgs({
    required String id,
  }) : id = pulumi.Input.asInput<String>(id);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory GetDelegationSetArgs.fromMap(Map<String, dynamic> map) {
    return GetDelegationSetArgs(
      id: map['id'] as String,
    );
  }
}
