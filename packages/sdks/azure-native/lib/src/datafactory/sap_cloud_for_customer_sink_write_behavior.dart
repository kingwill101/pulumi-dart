import 'package:pulumi/pulumi.dart' as pulumi;

/// The write behavior for the operation. Default is 'Insert'.
enum SapCloudForCustomerSinkWriteBehavior implements pulumi.PulumiEnum<String> {
  insert("Insert"),
  update("Update");

  const SapCloudForCustomerSinkWriteBehavior(this.wireValue);
  @override
  final String wireValue;

  static SapCloudForCustomerSinkWriteBehavior fromValue(String value) {
    for (final item in SapCloudForCustomerSinkWriteBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SapCloudForCustomerSinkWriteBehavior value: $value');
  }
}
