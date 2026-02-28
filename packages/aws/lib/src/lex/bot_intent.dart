// ignore_for_file: unused_element, unnecessary_cast

class BotIntent {
  /// The name of the intent. Must be less than or equal to 100 characters in length.
  final String intentName;

  /// The version of the intent. Must be less than or equal to 64 characters in length.
  final String intentVersion;

  /// Creates a new [BotIntent].
  /// [intentName] The name of the intent. Must be less than or equal to 100 characters in length.
  /// [intentVersion] The version of the intent. Must be less than or equal to 64 characters in length.
  BotIntent({
    required this.intentName,
    required this.intentVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['intentName'] = intentName;
    map['intentVersion'] = intentVersion;
    return map;
  }

  factory BotIntent.fromMap(Map<String, dynamic> map) {
    return BotIntent(
      intentName: map['intentName'] as String,
      intentVersion: map['intentVersion'] as String,
    );
  }
}
