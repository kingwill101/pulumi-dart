// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataLfTagExpression {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// Name of the table.
  final pulumi.Input<String> name;

  /// Creates a new [OptInResourceDataLfTagExpression].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [name] Name of the table.
  OptInResourceDataLfTagExpression({
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
      catalogId: map['catalogId'] == null ? null : ((map['catalogId'] as String).input()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

