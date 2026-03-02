// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventConnectionAuthParametersOauthOauthHttpParametersBody {
  /// Specified whether the value is secret.
  final pulumi.Input<bool>? isValueSecret;
  /// The key for the parameter.
  final pulumi.Input<String>? key;
  /// The value associated with the key. Created and stored in AWS Secrets Manager if is secret.
  final pulumi.Input<String>? value;

  /// Creates a new [EventConnectionAuthParametersOauthOauthHttpParametersBody].
  /// [isValueSecret] Specified whether the value is secret.
  /// [key] The key for the parameter.
  /// [value] The value associated with the key. Created and stored in AWS Secrets Manager if is secret.
  EventConnectionAuthParametersOauthOauthHttpParametersBody({
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

  factory EventConnectionAuthParametersOauthOauthHttpParametersBody.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersOauthOauthHttpParametersBody(
      isValueSecret: map['isValueSecret'] == null ? null : (map['isValueSecret'] as bool).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

