import 'package:pulumi/pulumi.dart' as pulumi;

/// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
enum ActivityOnInactiveMarkAs implements pulumi.PulumiEnum<String> {
  succeeded("Succeeded"),
  failed("Failed"),
  skipped("Skipped");

  const ActivityOnInactiveMarkAs(this.wireValue);
  @override
  final String wireValue;

  static ActivityOnInactiveMarkAs fromValue(String value) {
    for (final item in ActivityOnInactiveMarkAs.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActivityOnInactiveMarkAs value: $value');
  }
}
