import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum StatusName implements pulumi.PulumiEnum<String> {
  reachability("reachability");

  const StatusName(this.wireValue);
  @override
  final String wireValue;

  static StatusName fromValue(String value) {
    for (final item in StatusName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusName value: $value');
  }
}
