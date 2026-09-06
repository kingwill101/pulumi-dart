import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum AnomalyResultEnum implements pulumi.PulumiEnum<String> {
  anomalous("anomalous"),
  normal("normal");

  const AnomalyResultEnum(this.wireValue);
  @override
  final String wireValue;

  static AnomalyResultEnum fromValue(String value) {
    for (final item in AnomalyResultEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnomalyResultEnum value: $value');
  }
}
