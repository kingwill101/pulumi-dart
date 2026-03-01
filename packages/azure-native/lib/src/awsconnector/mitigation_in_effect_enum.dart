/// Property value
enum MitigationInEffectEnum {
  no("no"),
  yes("yes");

  const MitigationInEffectEnum(this.value);
  final String value;

  static MitigationInEffectEnum fromValue(String value) {
    for (final item in MitigationInEffectEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MitigationInEffectEnum value: $value');
  }
}

