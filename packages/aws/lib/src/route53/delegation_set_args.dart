// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_delegation_set_delegation_set_args_doc}
/// The set of arguments for DelegationSet.
/// {@endtemplate}
/// {@macro pulumi_route53_delegation_set_delegation_set_args_doc}
class DelegationSetArgs {
  /// This is a reference name used in Caller Reference
  /// (helpful for identifying single delegation set amongst others)
  final pulumi.Input<String>? referenceName;

  /// Creates a new [DelegationSetArgs].
  /// [referenceName] This is a reference name used in Caller Reference
  DelegationSetArgs({
    String? referenceName,
  }) : referenceName = pulumi.Input.asOptionalInput<String>(referenceName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final referenceNameValue = referenceName;
    if (referenceNameValue != null) {
      map['referenceName'] = referenceNameValue;
    }
    return map;
  }

  factory DelegationSetArgs.fromMap(Map<String, dynamic> map) {
    return DelegationSetArgs(
      referenceName:
          map['referenceName'] == null ? null : map['referenceName'] as String,
    );
  }
}
