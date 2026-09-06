import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum MitigationInEffectEnum implements pulumi.PulumiEnum<String> {
  no("no"),
  yes("yes");

  const MitigationInEffectEnum(this.wireValue);
  @override
  final String wireValue;

  static MitigationInEffectEnum fromValue(String value) {
    for (final item in MitigationInEffectEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MitigationInEffectEnum value: $value');
  }
}
