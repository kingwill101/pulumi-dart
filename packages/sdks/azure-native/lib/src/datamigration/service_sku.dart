// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Azure SKU instance
class ServiceSku {
  /// The capacity of the SKU, if it supports scaling
  final pulumi.Input<int>? capacity;

  /// The SKU family, used when the service has multiple performance classes within a tier, such as 'A', 'D', etc. for virtual machines
  final pulumi.Input<String>? family;

  /// The unique name of the SKU, such as 'P3'
  final pulumi.Input<String>? name;

  /// The size of the SKU, used when the name alone does not denote a service size or when a SKU has multiple performance classes within a family, e.g. 'A1' for virtual machines
  final pulumi.Input<String>? size;

  /// The tier of the SKU, such as 'Basic', 'General Purpose', or 'Business Critical'
  final pulumi.Input<String>? tier;

  /// Creates a new [ServiceSku].
  /// [capacity] The capacity of the SKU, if it supports scaling
  /// [family] The SKU family, used when the service has multiple performance classes within a tier, such as 'A', 'D', etc. for virtual machines
  /// [name] The unique name of the SKU, such as 'P3'
  /// [size] The size of the SKU, used when the name alone does not denote a service size or when a SKU has multiple performance classes within a family, e.g. 'A1' for virtual machines
  /// [tier] The tier of the SKU, such as 'Basic', 'General Purpose', or 'Business Critical'
  ServiceSku({this.capacity, this.family, this.name, this.size, this.tier});

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
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      family: (() {
        final guardedValue = map['family'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
