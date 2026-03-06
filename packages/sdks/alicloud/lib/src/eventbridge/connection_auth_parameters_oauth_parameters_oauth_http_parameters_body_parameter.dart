// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter {
  /// Specifies whether to enable authentication.
  final pulumi.Input<String>? isValueSecret;
  /// The key of the request path.
  final pulumi.Input<String>? key;
  /// The key of the request path.
  final pulumi.Input<String>? value;

  /// Creates a new [ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter].
  /// [isValueSecret] Specifies whether to enable authentication.
  /// [key] The key of the request path.
  /// [value] The key of the request path.
  const ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter({
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

  factory ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameter(
      isValueSecret: (() { final guardedValue = map['isValueSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

