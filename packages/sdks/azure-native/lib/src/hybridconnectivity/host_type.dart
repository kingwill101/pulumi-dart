import 'package:pulumi/pulumi.dart' as pulumi;

/// Host cloud the public cloud connector.
enum HostType implements pulumi.PulumiEnum<String> {
  aWS("AWS");

  const HostType(this.wireValue);
  @override
  final String wireValue;

  static HostType fromValue(String value) {
    for (final item in HostType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostType value: $value');
  }
}
