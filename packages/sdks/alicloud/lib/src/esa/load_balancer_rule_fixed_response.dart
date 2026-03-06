// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerRuleFixedResponse {
  /// The Content-Type field in the HTTP Header.
  final pulumi.Input<String>? contentType;
  /// The location field in the http return.
  final pulumi.Input<String>? location;
  /// The body value of the response.
  final pulumi.Input<String>? messageBody;
  /// Status Code.
  final pulumi.Input<int>? statusCode;

  /// Creates a new [LoadBalancerRuleFixedResponse].
  /// [contentType] The Content-Type field in the HTTP Header.
  /// [location] The location field in the http return.
  /// [messageBody] The body value of the response.
  /// [statusCode] Status Code.
  const LoadBalancerRuleFixedResponse({
    this.contentType,
    this.location,
    this.messageBody,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'location': ?location,
      'messageBody': ?messageBody,
      'statusCode': ?statusCode,
    };
  }

  factory LoadBalancerRuleFixedResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRuleFixedResponse(
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageBody: (() { final guardedValue = map['messageBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

