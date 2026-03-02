// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter {
  /// Specifies whether to enable authentication.
  final pulumi.Input<String>? isValueSecret;
  /// The key of the request path.
  final pulumi.Input<String>? key;
  /// The key of the request path.
  final pulumi.Input<String>? value;

  /// Creates a new [ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter].
  /// [isValueSecret] Specifies whether to enable authentication.
  /// [key] The key of the request path.
  /// [value] The key of the request path.
  ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter({
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

  factory ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameter(
      isValueSecret: map['isValueSecret'] == null ? null : (map['isValueSecret']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

