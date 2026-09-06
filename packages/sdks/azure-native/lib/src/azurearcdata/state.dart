import 'package:pulumi/pulumi.dart' as pulumi;

/// The activation state of the license.
enum State implements pulumi.PulumiEnum<String> {
  valueInactive("Inactive"),
  valueActive("Active"),
  valueTerminated("Terminated");

  const State(this.wireValue);
  @override
  final String wireValue;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}
