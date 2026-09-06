import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud event mapping config.
enum CloudEventAttributeType implements pulumi.PulumiEnum<String> {
  propagate("Propagate"),
  createOrRemap("CreateOrRemap");

  const CloudEventAttributeType(this.wireValue);
  @override
  final String wireValue;

  static CloudEventAttributeType fromValue(String value) {
    for (final item in CloudEventAttributeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudEventAttributeType value: $value');
  }
}
