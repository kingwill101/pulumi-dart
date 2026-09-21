// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantDetailCreateAssetType {
  /// Whether to include child domain units.
  final pulumi.Input<bool?>? includeChildDomainUnits;

  /// Creates a new [PolicyGrantDetailCreateAssetType].
  /// [includeChildDomainUnits] Whether to include child domain units.
  const PolicyGrantDetailCreateAssetType({
    this.includeChildDomainUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeChildDomainUnits': ?includeChildDomainUnits,
    };
  }

  factory PolicyGrantDetailCreateAssetType.fromMap(Map<String, dynamic> map) {
    return PolicyGrantDetailCreateAssetType(
      includeChildDomainUnits: (() { final guardedValue = map['includeChildDomainUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
