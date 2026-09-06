import 'package:pulumi/pulumi.dart' as pulumi;

/// The format of the Operation Name for Application Insights telemetries. Default is Name.
enum OperationNameFormat implements pulumi.PulumiEnum<String> {
  valueName("Name"),
  valueUrl("Url");

  const OperationNameFormat(this.wireValue);
  @override
  final String wireValue;

  static OperationNameFormat fromValue(String value) {
    for (final item in OperationNameFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationNameFormat value: $value');
  }
}
