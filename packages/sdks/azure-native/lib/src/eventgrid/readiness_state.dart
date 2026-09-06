import 'package:pulumi/pulumi.dart' as pulumi;

/// The readiness state of the corresponding partner topic.
enum ReadinessState implements pulumi.PulumiEnum<String> {
  valueNeverActivated("NeverActivated"),
  valueActivated("Activated");

  const ReadinessState(this.wireValue);
  @override
  final String wireValue;

  static ReadinessState fromValue(String value) {
    for (final item in ReadinessState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadinessState value: $value');
  }
}
