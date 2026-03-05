// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BotIntent {
  /// The name of the intent. Must be less than or equal to 100 characters in length.
  final pulumi.Input<String> intentName;
  /// The version of the intent. Must be less than or equal to 64 characters in length.
  final pulumi.Input<String> intentVersion;

  /// Creates a new [BotIntent].
  /// [intentName] The name of the intent. Must be less than or equal to 100 characters in length.
  /// [intentVersion] The version of the intent. Must be less than or equal to 64 characters in length.
  BotIntent({
    required this.intentName,
    required this.intentVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intentName': intentName,
      'intentVersion': intentVersion,
    };
  }

  factory BotIntent.fromMap(Map<String, dynamic> map) {
    return BotIntent(
      intentName: pulumi.Input.fromValue(map['intentName'] as String),
      intentVersion: pulumi.Input.fromValue(map['intentVersion'] as String),
    );
  }
}

