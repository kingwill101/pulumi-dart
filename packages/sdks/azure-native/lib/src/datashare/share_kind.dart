import 'package:pulumi/pulumi.dart' as pulumi;

/// Share kind.
enum ShareKind implements pulumi.PulumiEnum<String> {
  valueCopyBased("CopyBased"),
  valueInPlace("InPlace");

  const ShareKind(this.wireValue);
  @override
  final String wireValue;

  static ShareKind fromValue(String value) {
    for (final item in ShareKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareKind value: $value');
  }
}
