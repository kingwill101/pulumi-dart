// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventConnectionAuthParametersOauthOauthHttpParametersQueryString {
  /// Specified whether the value is secret.
  final pulumi.Input<bool>? isValueSecret;
  /// The key for the parameter.
  final pulumi.Input<String>? key;
  /// The value associated with the key. Created and stored in AWS Secrets Manager if is secret.
  final pulumi.Input<String>? value;

  /// Creates a new [EventConnectionAuthParametersOauthOauthHttpParametersQueryString].
  /// [isValueSecret] Specified whether the value is secret.
  /// [key] The key for the parameter.
  /// [value] The value associated with the key. Created and stored in AWS Secrets Manager if is secret.
  EventConnectionAuthParametersOauthOauthHttpParametersQueryString({
    this.isValueSecret,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isValueSecret': ?isValueSecret,
      'key': ?key,
      'value': ?value,
    };
  }

  factory EventConnectionAuthParametersOauthOauthHttpParametersQueryString.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersOauthOauthHttpParametersQueryString(
      isValueSecret: (() { final guardedValue = map['isValueSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

