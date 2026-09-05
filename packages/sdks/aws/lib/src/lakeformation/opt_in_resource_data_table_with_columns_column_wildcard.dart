// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataTableWithColumnsColumnWildcard {
  /// Excludes column names. Any column with this name will be excluded.
  final pulumi.Input<List<String>?>? excludedColumnNames;

  /// Creates a new [OptInResourceDataTableWithColumnsColumnWildcard].
  /// [excludedColumnNames] Excludes column names. Any column with this name will be excluded.
  const OptInResourceDataTableWithColumnsColumnWildcard({
    this.excludedColumnNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedColumnNames': ?excludedColumnNames,
    };
  }

  factory OptInResourceDataTableWithColumnsColumnWildcard.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataTableWithColumnsColumnWildcard(
      excludedColumnNames: (() { final guardedValue = map['excludedColumnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
