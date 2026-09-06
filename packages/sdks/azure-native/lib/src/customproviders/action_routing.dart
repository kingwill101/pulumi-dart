import 'package:pulumi/pulumi.dart' as pulumi;

/// The routing types that are supported for action requests.
enum ActionRouting implements pulumi.PulumiEnum<String> {
  valueProxy("Proxy");

  const ActionRouting(this.wireValue);
  @override
  final String wireValue;

  static ActionRouting fromValue(String value) {
    for (final item in ActionRouting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionRouting value: $value');
  }
}
