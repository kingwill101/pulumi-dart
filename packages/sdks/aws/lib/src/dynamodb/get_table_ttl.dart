// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableTtl {
  final pulumi.Input<String> attributeName;
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetTableTtl].
  /// [attributeName] Required.
  /// [enabled] Required.
  const GetTableTtl({
    required this.attributeName,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': attributeName,
      'enabled': enabled,
    };
  }

  factory GetTableTtl.fromMap(Map<String, dynamic> map) {
    return GetTableTtl(
      attributeName: pulumi.Input.fromValue(map['attributeName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
