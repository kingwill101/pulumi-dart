import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the Experiment
enum State implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

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
