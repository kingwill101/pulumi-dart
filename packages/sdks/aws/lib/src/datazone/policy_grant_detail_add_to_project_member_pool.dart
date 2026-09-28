// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantDetailAddToProjectMemberPool {
  /// Whether to include child domain units.
  final pulumi.Input<bool?>? includeChildDomainUnits;

  /// Creates a new [PolicyGrantDetailAddToProjectMemberPool].
  /// [includeChildDomainUnits] Whether to include child domain units.
  const PolicyGrantDetailAddToProjectMemberPool({
    this.includeChildDomainUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeChildDomainUnits': ?includeChildDomainUnits,
    };
  }

  factory PolicyGrantDetailAddToProjectMemberPool.fromMap(Map<String, dynamic> map) {
    return PolicyGrantDetailAddToProjectMemberPool(
      includeChildDomainUnits: (() { final guardedValue = map['includeChildDomainUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
