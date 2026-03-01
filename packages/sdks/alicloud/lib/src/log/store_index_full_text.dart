// ignore_for_file: unused_element, unnecessary_cast


class StoreIndexFullText {
  /// Whether the case sensitive. Default to false.
  final bool? caseSensitive;
  /// Whether includes the chinese. Default to false.
  final bool? includeChinese;
  /// The string of several split words, like "\r", "#"
  final String? token;

  /// Creates a new [StoreIndexFullText].
  /// [caseSensitive] Whether the case sensitive. Default to false.
  /// [includeChinese] Whether includes the chinese. Default to false.
  /// [token] The string of several split words, like "\r", "#"
  StoreIndexFullText({
    this.caseSensitive,
    this.includeChinese,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'includeChinese': ?includeChinese,
      'token': ?token,
    };
  }

  factory StoreIndexFullText.fromMap(Map<String, dynamic> map) {
    return StoreIndexFullText(
      caseSensitive: map['caseSensitive'] == null ? null : map['caseSensitive'] as bool,
      includeChinese: map['includeChinese'] == null ? null : map['includeChinese'] as bool,
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}

