// ignore_for_file: unused_element, unnecessary_cast


class ResourceModelWithAllowedPropertySetResponseSku {
  /// If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  final int? capacity;
  /// If the service has different generations of hardware, for the same SKU, then that can be captured here.
  final String? family;
  /// The name of the SKU. E.g. P3. It is typically a letter+number code
  final String name;
  /// The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  final String? size;
  /// This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
  final String? tier;

  /// Creates a new [ResourceModelWithAllowedPropertySetResponseSku].
  /// [capacity] If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  /// [family] If the service has different generations of hardware, for the same SKU, then that can be captured here.
  /// [name] The name of the SKU. E.g. P3. It is typically a letter+number code
  /// [size] The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  /// [tier] This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
  ResourceModelWithAllowedPropertySetResponseSku({
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

  factory ResourceModelWithAllowedPropertySetResponseSku.fromMap(Map<String, dynamic> map) {
    return ResourceModelWithAllowedPropertySetResponseSku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

