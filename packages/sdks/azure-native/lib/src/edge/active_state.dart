import 'package:pulumi/pulumi.dart' as pulumi;

/// State of instance
enum ActiveState implements pulumi.PulumiEnum<String> {
  active("active"),
  inactive("inactive");

  const ActiveState(this.wireValue);
  @override
  final String wireValue;

  static ActiveState fromValue(String value) {
    for (final item in ActiveState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActiveState value: $value');
  }
}
