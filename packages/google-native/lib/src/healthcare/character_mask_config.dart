// ignore_for_file: unused_element, unnecessary_cast

/// Mask a string by replacing its characters with a fixed character.
class CharacterMaskConfig {
  /// Character to mask the sensitive values. If not supplied, defaults to "*".
  final String? maskingCharacter;

  /// Creates a new [CharacterMaskConfig].
  /// [maskingCharacter] Character to mask the sensitive values. If not supplied, defaults to "*".
  CharacterMaskConfig({
    this.maskingCharacter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maskingCharacterValue = maskingCharacter;
    if (maskingCharacterValue != null) {
      map['maskingCharacter'] = maskingCharacterValue;
    }
    return map;
  }

  factory CharacterMaskConfig.fromMap(Map<String, dynamic> map) {
    return CharacterMaskConfig(
      maskingCharacter: map['maskingCharacter'] == null
          ? null
          : map['maskingCharacter'] as String,
    );
  }
}
