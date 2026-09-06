import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum VirtualizationType implements pulumi.PulumiEnum<String> {
  hvm("hvm"),
  paravirtual("paravirtual");

  const VirtualizationType(this.wireValue);
  @override
  final String wireValue;

  static VirtualizationType fromValue(String value) {
    for (final item in VirtualizationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualizationType value: $value');
  }
}
