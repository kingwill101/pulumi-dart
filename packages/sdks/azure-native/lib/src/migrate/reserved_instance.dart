import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure reserved instance.
enum ReservedInstance implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueRI1Year("RI1Year"),
  valueRI3Year("RI3Year");

  const ReservedInstance(this.wireValue);
  @override
  final String wireValue;

  static ReservedInstance fromValue(String value) {
    for (final item in ReservedInstance.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReservedInstance value: $value');
  }
}
