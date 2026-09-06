import 'package:pulumi/pulumi.dart' as pulumi;

/// Port type that needs to be matched.
enum PortType implements pulumi.PulumiEnum<String> {
  valueSourcePort("SourcePort"),
  valueDestinationPort("DestinationPort");

  const PortType(this.wireValue);
  @override
  final String wireValue;

  static PortType fromValue(String value) {
    for (final item in PortType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PortType value: $value');
  }
}
