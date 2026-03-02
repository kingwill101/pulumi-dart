// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventConnectionAuthParametersInvocationHttpParametersHeader {
  /// Specified whether the value is secret.
  final pulumi.Input<bool>? isValueSecret;
  /// The key for the parameter.
  final pulumi.Input<String>? key;
  /// The value associated with the key. Created and stored in AWS Secrets Manager if is secret.
  final pulumi.Input<String>? value;

  /// Creates a new [EventConnectionAuthParametersInvocationHttpParametersHeader].
  /// [isValueSecret] Specified whether the value is secret.
  /// [key] The key for the parameter.
  /// [value] The value associated with the key. Created and stored in AWS Secrets Manager if is secret.
  EventConnectionAuthParametersInvocationHttpParametersHeader({
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

  factory EventConnectionAuthParametersInvocationHttpParametersHeader.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersInvocationHttpParametersHeader(
      isValueSecret: map['isValueSecret'] == null ? null : (map['isValueSecret'] as bool).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

