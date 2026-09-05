// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataLfTagExpression {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String?>? catalogId;
  /// Name of the LF-Tag expression to grant permissions on.
  final pulumi.Input<String> name;

  /// Creates a new [OptInResourceDataLfTagExpression].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [name] Name of the LF-Tag expression to grant permissions on.
  const OptInResourceDataLfTagExpression({
    this.catalogId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'name': name,
    };
  }

  factory OptInResourceDataLfTagExpression.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataLfTagExpression(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
