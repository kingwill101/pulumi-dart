import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of the guest configuration. For example:DSC
enum Kind implements pulumi.PulumiEnum<String> {
  dSC("DSC");

  const Kind(this.wireValue);
  @override
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
