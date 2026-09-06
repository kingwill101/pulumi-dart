import 'package:pulumi/pulumi.dart' as pulumi;

/// The allocation policy type.
enum AkriConnectorTemplateAllocationPolicy implements pulumi.PulumiEnum<String> {
  bucketized("Bucketized");

  const AkriConnectorTemplateAllocationPolicy(this.wireValue);
  @override
  final String wireValue;

  static AkriConnectorTemplateAllocationPolicy fromValue(String value) {
    for (final item in AkriConnectorTemplateAllocationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorTemplateAllocationPolicy value: $value');
  }
}
