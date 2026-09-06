import 'package:pulumi/pulumi.dart' as pulumi;

/// State of soft delete
enum SoftDeleteState implements pulumi.PulumiEnum<String> {
  valueOff("Off"),
  valueOn("On"),
  valueAlwaysOn("AlwaysOn");

  const SoftDeleteState(this.wireValue);
  @override
  final String wireValue;

  static SoftDeleteState fromValue(String value) {
    for (final item in SoftDeleteState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftDeleteState value: $value');
  }
}
