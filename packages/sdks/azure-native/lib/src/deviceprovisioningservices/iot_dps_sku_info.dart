// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of possible provisioning service SKUs.
class IotDpsSkuInfo {
  /// The number of units to provision
  final pulumi.Input<double>? capacity;

  /// Sku name.
  final pulumi.Input<String>? name;

  /// Creates a new [IotDpsSkuInfo].
  /// [capacity] The number of units to provision
  /// [name] Sku name.
  IotDpsSkuInfo({this.capacity, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'capacity': ?capacity, 'name': ?name};
  }

  factory IotDpsSkuInfo.fromMap(Map<String, dynamic> map) {
    return IotDpsSkuInfo(
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
