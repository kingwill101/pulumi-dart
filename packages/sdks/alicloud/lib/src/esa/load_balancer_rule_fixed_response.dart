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
  LoadBalancerRuleFixedResponse({
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
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      messageBody: map['messageBody'] == null ? null : (map['messageBody'] as String).input(),
      statusCode: map['statusCode'] == null ? null : (map['statusCode'] as int).input(),
    );
  }
}

