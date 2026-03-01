// ignore_for_file: unused_element, unnecessary_cast

/// Mask a string by replacing its characters with a fixed character.
class CharacterMaskConfigHealthcareV1beta1 {
  /// Character to mask the sensitive values. If not supplied, defaults to "*".
  final String? maskingCharacter;

  /// Creates a new [CharacterMaskConfigHealthcareV1beta1].
  /// [maskingCharacter] Character to mask the sensitive values. If not supplied, defaults to "*".
  CharacterMaskConfigHealthcareV1beta1({this.maskingCharacter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maskingCharacter': ?maskingCharacter};
  }

  factory CharacterMaskConfigHealthcareV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CharacterMaskConfigHealthcareV1beta1(
      maskingCharacter: map['maskingCharacter'] == null
          ? null
          : map['maskingCharacter'] as String,
    );
  }
}
