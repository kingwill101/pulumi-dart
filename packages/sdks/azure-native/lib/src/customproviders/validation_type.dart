import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of validation to run against a matching request.
enum ValidationType implements pulumi.PulumiEnum<String> {
  valueSwagger("Swagger");

  const ValidationType(this.wireValue);
  @override
  final String wireValue;

  static ValidationType fromValue(String value) {
    for (final item in ValidationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationType value: $value');
  }
}
