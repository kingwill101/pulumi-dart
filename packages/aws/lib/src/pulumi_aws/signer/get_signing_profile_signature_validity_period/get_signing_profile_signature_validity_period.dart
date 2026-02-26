// ignore_for_file: unused_element, unnecessary_cast

class GetSigningProfileSignatureValidityPeriod {
  final String type;
  final int value;

  GetSigningProfileSignatureValidityPeriod({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory GetSigningProfileSignatureValidityPeriod.fromMap(
      Map<String, dynamic> map) {
    return GetSigningProfileSignatureValidityPeriod(
      type: map['type'] as String,
      value: map['value'] as int,
    );
  }
}
