import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the status of content safety.
enum ContentSafetyStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const ContentSafetyStatus(this.wireValue);
  @override
  final String wireValue;

  static ContentSafetyStatus fromValue(String value) {
    for (final item in ContentSafetyStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentSafetyStatus value: $value');
  }
}
