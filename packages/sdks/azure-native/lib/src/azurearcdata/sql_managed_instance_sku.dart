// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_managed_instance_sku_name.dart';
import 'sql_managed_instance_sku_tier.dart';

/// The resource model definition representing SKU for Azure Managed Instance - Azure Arc
class SqlManagedInstanceSku {
  /// The SKU capacity
  final pulumi.Input<int>? capacity;
  /// Whether dev/test is enabled. When the dev field is set to true, the resource is used for dev/test purpose.
  final pulumi.Input<bool>? dev;
  /// The SKU family
  final pulumi.Input<String>? family;
  /// The name of the SKU.
  final pulumi.Input<SqlManagedInstanceSkuName> name;
  /// The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  final pulumi.Input<String>? size;
  /// The pricing tier for the instance.
  final pulumi.Input<SqlManagedInstanceSkuTier>? tier;

  /// Creates a new [SqlManagedInstanceSku].
  /// [capacity] The SKU capacity
  /// [dev] Whether dev/test is enabled. When the dev field is set to true, the resource is used for dev/test purpose.
  /// [family] The SKU family
  /// [name] The name of the SKU.
  /// [size] The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  /// [tier] The pricing tier for the instance.
  SqlManagedInstanceSku({
    this.capacity,
    this.dev,
    this.family,
    required this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'dev': ?dev,
      'family': ?family,
      'name': pulumi.Input.mapInputValue<SqlManagedInstanceSkuName, String>(name, (value) => value.wireValue),
      'size': ?size,
      'tier': ?pulumi.Input.mapOptionalInputValue<SqlManagedInstanceSkuTier, String>(tier, (value) => value.wireValue),
    };
  }

  factory SqlManagedInstanceSku.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceSku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(SqlManagedInstanceSkuName.fromValue(map['name']! as String)),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlManagedInstanceSkuTier.fromValue(guardedValue as String)); })(),
    );
  }
}

