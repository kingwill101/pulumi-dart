import 'package:pulumi/pulumi.dart' as pulumi;

/// Location of the resource.
enum Location implements pulumi.PulumiEnum<String> {
  valueGlobal("global");

  const Location(this.wireValue);
  @override
  final String wireValue;

  static Location fromValue(String value) {
    for (final item in Location.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Location value: $value');
  }
}
