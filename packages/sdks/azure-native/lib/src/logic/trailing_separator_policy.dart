import 'package:pulumi/pulumi.dart' as pulumi;

/// The trailing separator policy.
enum TrailingSeparatorPolicy implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueNotAllowed("NotAllowed"),
  valueOptional("Optional"),
  valueMandatory("Mandatory");

  const TrailingSeparatorPolicy(this.wireValue);
  @override
  final String wireValue;

  static TrailingSeparatorPolicy fromValue(String value) {
    for (final item in TrailingSeparatorPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrailingSeparatorPolicy value: $value');
  }
}
