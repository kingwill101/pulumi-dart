import 'package:pulumi/pulumi.dart' as pulumi;

/// Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
enum CloudInitDataSource implements pulumi.PulumiEnum<String> {
  noCloud("NoCloud"),
  azure("Azure");

  const CloudInitDataSource(this.wireValue);
  @override
  final String wireValue;

  static CloudInitDataSource fromValue(String value) {
    for (final item in CloudInitDataSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudInitDataSource value: $value');
  }
}
