import 'package:pulumi/pulumi.dart' as pulumi;

/// The chosen redundancy level of the file share.
enum Redundancy implements pulumi.PulumiEnum<String> {
  local("Local"),
  zone("Zone");

  const Redundancy(this.wireValue);
  @override
  final String wireValue;

  static Redundancy fromValue(String value) {
    for (final item in Redundancy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Redundancy value: $value');
  }
}
