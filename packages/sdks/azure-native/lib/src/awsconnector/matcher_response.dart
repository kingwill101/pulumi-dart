// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Matcher
class MatcherResponse {
  /// You can specify values between 0 and 99. You can specify multiple values, or a range of values. The default value is 12.
  final pulumi.Input<String>? grpcCode;
  /// For Application Load Balancers, you can specify values between 200 and 499, and the default value is 200. You can specify multiple values or a range of values.
  final pulumi.Input<String>? httpCode;

  /// Creates a new [MatcherResponse].
  /// [grpcCode] You can specify values between 0 and 99. You can specify multiple values, or a range of values. The default value is 12.
  /// [httpCode] For Application Load Balancers, you can specify values between 200 and 499, and the default value is 200. You can specify multiple values or a range of values.
  const MatcherResponse({
    this.grpcCode,
    this.httpCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcCode': ?grpcCode,
      'httpCode': ?httpCode,
    };
  }

  factory MatcherResponse.fromMap(Map<String, dynamic> map) {
    return MatcherResponse(
      grpcCode: (() { final guardedValue = map['grpcCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpCode: (() { final guardedValue = map['httpCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

