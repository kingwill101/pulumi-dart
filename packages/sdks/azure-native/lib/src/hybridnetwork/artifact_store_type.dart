import 'package:pulumi/pulumi.dart' as pulumi;

/// The artifact store type.
enum ArtifactStoreType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueAzureContainerRegistry("AzureContainerRegistry"),
  valueAzureStorageAccount("AzureStorageAccount");

  const ArtifactStoreType(this.wireValue);
  @override
  final String wireValue;

  static ArtifactStoreType fromValue(String value) {
    for (final item in ArtifactStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactStoreType value: $value');
  }
}
