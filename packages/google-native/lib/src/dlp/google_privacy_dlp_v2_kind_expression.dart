// ignore_for_file: unused_element, unnecessary_cast

/// A representation of a Datastore kind.
class GooglePrivacyDlpV2KindExpression {
  /// The name of the kind.
  final String? name;

  /// Creates a new [GooglePrivacyDlpV2KindExpression].
  /// [name] The name of the kind.
  GooglePrivacyDlpV2KindExpression({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GooglePrivacyDlpV2KindExpression.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KindExpression(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
