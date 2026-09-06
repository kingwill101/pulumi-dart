import 'package:pulumi/pulumi.dart' as pulumi;

enum AKSVolumeTypes implements pulumi.PulumiEnum<String> {
  valueAzureDisk("AzureDisk"),
  valueAzureFileShareSMB("AzureFileShareSMB");

  const AKSVolumeTypes(this.wireValue);
  @override
  final String wireValue;

  static AKSVolumeTypes fromValue(String value) {
    for (final item in AKSVolumeTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AKSVolumeTypes value: $value');
  }
}
