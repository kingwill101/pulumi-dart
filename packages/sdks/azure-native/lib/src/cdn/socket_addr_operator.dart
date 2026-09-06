import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum SocketAddrOperator implements pulumi.PulumiEnum<String> {
  any("Any"),
  iPMatch("IPMatch");

  const SocketAddrOperator(this.wireValue);
  @override
  final String wireValue;

  static SocketAddrOperator fromValue(String value) {
    for (final item in SocketAddrOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SocketAddrOperator value: $value');
  }
}
