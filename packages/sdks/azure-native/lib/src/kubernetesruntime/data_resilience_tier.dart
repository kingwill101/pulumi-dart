import 'package:pulumi/pulumi.dart' as pulumi;

/// Allow single data node failure
enum DataResilienceTier implements pulumi.PulumiEnum<String> {
  notDataResilient("NotDataResilient"),
  dataResilient("DataResilient");

  const DataResilienceTier(this.wireValue);
  @override
  final String wireValue;

  static DataResilienceTier fromValue(String value) {
    for (final item in DataResilienceTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataResilienceTier value: $value');
  }
}
