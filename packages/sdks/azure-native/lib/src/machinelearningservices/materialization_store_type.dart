import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the stores to which materialization should happen
enum MaterializationStoreType implements pulumi.PulumiEnum<String> {
  none("None"),
  online("Online"),
  offline("Offline"),
  onlineAndOffline("OnlineAndOffline");

  const MaterializationStoreType(this.wireValue);
  @override
  final String wireValue;

  static MaterializationStoreType fromValue(String value) {
    for (final item in MaterializationStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaterializationStoreType value: $value');
  }
}
