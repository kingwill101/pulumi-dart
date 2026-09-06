import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope at which the operator will be installed.
enum ScopeType implements pulumi.PulumiEnum<String> {
  valueCluster("cluster"),
  valueNamespace("namespace");

  const ScopeType(this.wireValue);
  @override
  final String wireValue;

  static ScopeType fromValue(String value) {
    for (final item in ScopeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopeType value: $value');
  }
}
