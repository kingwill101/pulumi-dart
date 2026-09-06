import 'package:pulumi/pulumi.dart' as pulumi;

/// Algorithm to use for URL signing
enum Algorithm implements pulumi.PulumiEnum<String> {
  sHA256("SHA256");

  const Algorithm(this.wireValue);
  @override
  final String wireValue;

  static Algorithm fromValue(String value) {
    for (final item in Algorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Algorithm value: $value');
  }
}
