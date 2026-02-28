// ignore_for_file: unused_element, unnecessary_cast


/// Mask a string by replacing its characters with a fixed character.
class CharacterMaskConfigResponseHealthcareV1beta1 {
  /// Character to mask the sensitive values. If not supplied, defaults to "*".
  final String maskingCharacter;

  /// Creates a new [CharacterMaskConfigResponseHealthcareV1beta1].
  /// [maskingCharacter] Character to mask the sensitive values. If not supplied, defaults to "*".
  CharacterMaskConfigResponseHealthcareV1beta1({
    required this.maskingCharacter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maskingCharacter': maskingCharacter,
    };
  }

  factory CharacterMaskConfigResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return CharacterMaskConfigResponseHealthcareV1beta1(
      maskingCharacter: map['maskingCharacter'] as String,
    );
  }
}

