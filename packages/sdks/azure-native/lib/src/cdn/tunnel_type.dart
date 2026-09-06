import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol this tunnel will use for allowing traffic to backends.
enum TunnelType implements pulumi.PulumiEnum<String> {
  valueHttpConnect("HttpConnect");

  const TunnelType(this.wireValue);
  @override
  final String wireValue;

  static TunnelType fromValue(String value) {
    for (final item in TunnelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TunnelType value: $value');
  }
}
