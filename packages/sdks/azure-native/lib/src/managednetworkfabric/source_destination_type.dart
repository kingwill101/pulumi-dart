import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Address type that needs to be matched.
enum SourceDestinationType implements pulumi.PulumiEnum<String> {
  valueSourceIP("SourceIP"),
  valueDestinationIP("DestinationIP");

  const SourceDestinationType(this.wireValue);
  @override
  final String wireValue;

  static SourceDestinationType fromValue(String value) {
    for (final item in SourceDestinationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceDestinationType value: $value');
  }
}
