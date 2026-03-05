/// Property value
enum MitigationInEffectEnum {
  no("no"),
  yes("yes");

  const MitigationInEffectEnum(this.wireValue);
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

