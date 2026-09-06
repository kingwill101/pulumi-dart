import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the link target.
enum LinkedServiceLinkType implements pulumi.PulumiEnum<String> {
  valueSynapse("Synapse");

  const LinkedServiceLinkType(this.wireValue);
  @override
  final String wireValue;

  static LinkedServiceLinkType fromValue(String value) {
    for (final item in LinkedServiceLinkType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedServiceLinkType value: $value');
  }
}
