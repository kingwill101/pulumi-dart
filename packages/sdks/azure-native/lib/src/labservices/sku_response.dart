// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource model definition representing SKU
class SkuResponse {
  /// If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  final pulumi.Input<int>? capacity;
  /// If the service has different generations of hardware, for the same SKU, then that can be captured here.
  final pulumi.Input<String>? family;
  /// The name of the SKU. Ex - P3. It is typically a letter+number code
  final pulumi.Input<String> name;
  /// The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  final pulumi.Input<String>? size;
  /// This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  /// [family] If the service has different generations of hardware, for the same SKU, then that can be captured here.
  /// [name] The name of the SKU. Ex - P3. It is typically a letter+number code
  /// [size] The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  /// [tier] This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
  SkuResponse({
    this.capacity,
    this.family,
    required this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      family: map['family'] == null ? null : (map['family']! as String).input(),
      name: (map['name'] as String).input(),
      size: map['size'] == null ? null : (map['size']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

