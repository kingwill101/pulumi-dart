// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantDetailUseAssetType {
  /// Identifier of the domain unit.
  final pulumi.Input<String?>? domainUnitId;

  /// Creates a new [PolicyGrantDetailUseAssetType].
  /// [domainUnitId] Identifier of the domain unit.
  const PolicyGrantDetailUseAssetType({
    this.domainUnitId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainUnitId': ?domainUnitId,
    };
  }

  factory PolicyGrantDetailUseAssetType.fromMap(Map<String, dynamic> map) {
    return PolicyGrantDetailUseAssetType(
      domainUnitId: (() { final guardedValue = map['domainUnitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
