// ignore_for_file: unused_element, unnecessary_cast

class GetSigningProfileSignatureValidityPeriod {
  final String type;
  final int value;

  /// Creates a new [GetSigningProfileSignatureValidityPeriod].
  /// [type] Required.
  /// [value] Required.
  GetSigningProfileSignatureValidityPeriod({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'value': value};
  }

  factory GetSigningProfileSignatureValidityPeriod.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSigningProfileSignatureValidityPeriod(
      type: map['type'] as String,
      value: map['value'] as int,
    );
  }
}
