// ignore_for_file: unused_element, unnecessary_cast

/// Mask a string by replacing its characters with a fixed character.
class CharacterMaskConfigResponse2 {
  /// Character to mask the sensitive values. If not supplied, defaults to "*".
  final String maskingCharacter;

  CharacterMaskConfigResponse2({
    required this.maskingCharacter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maskingCharacter'] = maskingCharacter;
    return map;
  }

  factory CharacterMaskConfigResponse2.fromMap(Map<String, dynamic> map) {
    return CharacterMaskConfigResponse2(
      maskingCharacter: map['maskingCharacter'] as String,
    );
  }
}
