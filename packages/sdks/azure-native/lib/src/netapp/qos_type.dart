import 'package:pulumi/pulumi.dart' as pulumi;

/// The qos type of the pool
enum QosType implements pulumi.PulumiEnum<String> {
  valueAuto("Auto"),
  valueManual("Manual");

  const QosType(this.wireValue);
  @override
  final String wireValue;

  static QosType fromValue(String value) {
    for (final item in QosType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QosType value: $value');
  }
}
