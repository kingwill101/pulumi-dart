import 'package:pulumi/pulumi.dart' as pulumi;

/// The cloud connector type.
enum CloudType implements pulumi.PulumiEnum<String> {
  valueAWS("AWS");

  const CloudType(this.wireValue);
  @override
  final String wireValue;

  static CloudType fromValue(String value) {
    for (final item in CloudType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudType value: $value');
  }
}
