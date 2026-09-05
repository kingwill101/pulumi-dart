// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceLfTagTableWithColumnsColumnWildcard {
  /// Set of column names for the table to exclude. If `excludedColumnNames` is included, `wildcard` must be set to `true` to avoid Terraform reporting a difference.
  final pulumi.Input<List<String>?>? excludedColumnNames;

  /// Creates a new [ResourceLfTagTableWithColumnsColumnWildcard].
  /// [excludedColumnNames] Set of column names for the table to exclude. If `excludedColumnNames` is included, `wildcard` must be set to `true` to avoid Terraform reporting a difference.
  const ResourceLfTagTableWithColumnsColumnWildcard({
    this.excludedColumnNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedColumnNames': ?excludedColumnNames,
    };
  }

  factory ResourceLfTagTableWithColumnsColumnWildcard.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagTableWithColumnsColumnWildcard(
      excludedColumnNames: (() { final guardedValue = map['excludedColumnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
