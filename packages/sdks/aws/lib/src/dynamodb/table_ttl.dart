// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableTtl {
  /// Name of the table attribute to store the TTL timestamp in.
  /// Required if `enabled` is `true`, must not be set otherwise.
  final pulumi.Input<String?>? attributeName;
  /// Whether TTL is enabled.
  /// Default value is `false`.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [TableTtl].
  /// [attributeName] Name of the table attribute to store the TTL timestamp in.
  /// [enabled] Whether TTL is enabled.
  const TableTtl({
    this.attributeName,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'enabled': ?enabled,
    };
  }

  factory TableTtl.fromMap(Map<String, dynamic> map) {
    return TableTtl(
      attributeName: (() { final guardedValue = map['attributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
