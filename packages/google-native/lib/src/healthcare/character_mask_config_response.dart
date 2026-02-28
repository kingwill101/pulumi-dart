// ignore_for_file: unused_element, unnecessary_cast


/// Mask a string by replacing its characters with a fixed character.
class CharacterMaskConfigResponse {
  /// Character to mask the sensitive values. If not supplied, defaults to "*".
  final String maskingCharacter;

  /// Creates a new [CharacterMaskConfigResponse].
  /// [maskingCharacter] Character to mask the sensitive values. If not supplied, defaults to "*".
  CharacterMaskConfigResponse({
    required this.maskingCharacter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maskingCharacter': maskingCharacter,
    };
  }

  factory CharacterMaskConfigResponse.fromMap(Map<String, dynamic> map) {
    return CharacterMaskConfigResponse(
      maskingCharacter: map['maskingCharacter'] as String,
    );
  }
}

