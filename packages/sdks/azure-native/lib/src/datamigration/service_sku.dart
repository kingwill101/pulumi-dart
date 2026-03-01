// ignore_for_file: unused_element, unnecessary_cast


/// An Azure SKU instance
class ServiceSku {
  /// The capacity of the SKU, if it supports scaling
  final int? capacity;
  /// The SKU family, used when the service has multiple performance classes within a tier, such as 'A', 'D', etc. for virtual machines
  final String? family;
  /// The unique name of the SKU, such as 'P3'
  final String? name;
  /// The size of the SKU, used when the name alone does not denote a service size or when a SKU has multiple performance classes within a family, e.g. 'A1' for virtual machines
  final String? size;
  /// The tier of the SKU, such as 'Basic', 'General Purpose', or 'Business Critical'
  final String? tier;

  /// Creates a new [ServiceSku].
  /// [capacity] The capacity of the SKU, if it supports scaling
  /// [family] The SKU family, used when the service has multiple performance classes within a tier, such as 'A', 'D', etc. for virtual machines
  /// [name] The unique name of the SKU, such as 'P3'
  /// [size] The size of the SKU, used when the name alone does not denote a service size or when a SKU has multiple performance classes within a family, e.g. 'A1' for virtual machines
  /// [tier] The tier of the SKU, such as 'Basic', 'General Purpose', or 'Business Critical'
  ServiceSku({
    this.capacity,
    this.family,
    this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': ?name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory ServiceSku.fromMap(Map<String, dynamic> map) {
    return ServiceSku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

