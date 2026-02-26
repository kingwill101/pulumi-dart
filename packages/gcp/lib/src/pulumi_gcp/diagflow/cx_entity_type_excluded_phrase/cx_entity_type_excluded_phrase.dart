// ignore_for_file: unused_element, unnecessary_cast

class CxEntityTypeExcludedPhrase {
  /// The word or phrase to be excluded.
  final String? value;

  CxEntityTypeExcludedPhrase({
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory CxEntityTypeExcludedPhrase.fromMap(Map<String, dynamic> map) {
    return CxEntityTypeExcludedPhrase(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
