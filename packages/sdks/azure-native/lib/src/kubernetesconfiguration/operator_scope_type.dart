import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope at which the operator will be installed.
enum OperatorScopeType implements pulumi.PulumiEnum<String> {
  valueCluster("cluster"),
  valueNamespace("namespace");

  const OperatorScopeType(this.wireValue);
  @override
  final String wireValue;

  static OperatorScopeType fromValue(String value) {
    for (final item in OperatorScopeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatorScopeType value: $value');
  }
}
