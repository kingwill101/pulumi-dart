import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum DomainType implements pulumi.PulumiEnum<String> {
  standard("standard"),
  vpc("vpc");

  const DomainType(this.wireValue);
  @override
  final String wireValue;

  static DomainType fromValue(String value) {
    for (final item in DomainType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainType value: $value');
  }
}
