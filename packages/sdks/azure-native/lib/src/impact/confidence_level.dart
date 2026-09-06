import 'package:pulumi/pulumi.dart' as pulumi;

/// Degree of confidence on the impact being a platform issue
enum ConfidenceLevel implements pulumi.PulumiEnum<String> {
  low("Low"),
  medium("Medium"),
  high("High");

  const ConfidenceLevel(this.wireValue);
  @override
  final String wireValue;

  static ConfidenceLevel fromValue(String value) {
    for (final item in ConfidenceLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfidenceLevel value: $value');
  }
}
