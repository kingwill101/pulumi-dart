import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of NNI used. Example: CE | NPB
enum NniType implements pulumi.PulumiEnum<String> {
  valueCE("CE"),
  valueNPB("NPB");

  const NniType(this.wireValue);
  @override
  final String wireValue;

  static NniType fromValue(String value) {
    for (final item in NniType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NniType value: $value');
  }
}
