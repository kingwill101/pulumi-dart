import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of workbook. Choices are user and shared.
enum Kind implements pulumi.PulumiEnum<String> {
  valueUser("user"),
  valueShared("shared");

  const Kind(this.wireValue);
  @override
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
