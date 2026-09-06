import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum AmdSevSnpSpecification implements pulumi.PulumiEnum<String> {
  disabled("disabled"),
  enabled("enabled");

  const AmdSevSnpSpecification(this.wireValue);
  @override
  final String wireValue;

  static AmdSevSnpSpecification fromValue(String value) {
    for (final item in AmdSevSnpSpecification.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmdSevSnpSpecification value: $value');
  }
}
