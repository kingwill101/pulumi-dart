// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointElasticsearchSetting {
  final pulumi.Input<String> endpointUri;
  final pulumi.Input<int> errorRetryDuration;
  final pulumi.Input<int> fullLoadErrorPercentage;
  final pulumi.Input<String> serviceAccessRoleArn;

  /// Creates a new [GetEndpointElasticsearchSetting].
  /// [endpointUri] Required.
  /// [errorRetryDuration] Required.
  /// [fullLoadErrorPercentage] Required.
  /// [serviceAccessRoleArn] Required.
  const GetEndpointElasticsearchSetting({
    required this.endpointUri,
    required this.errorRetryDuration,
    required this.fullLoadErrorPercentage,
    required this.serviceAccessRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUri': endpointUri,
      'errorRetryDuration': errorRetryDuration,
      'fullLoadErrorPercentage': fullLoadErrorPercentage,
      'serviceAccessRoleArn': serviceAccessRoleArn,
    };
  }

  factory GetEndpointElasticsearchSetting.fromMap(Map<String, dynamic> map) {
    return GetEndpointElasticsearchSetting(
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      errorRetryDuration: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['errorRetryDuration'])),
      fullLoadErrorPercentage: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['fullLoadErrorPercentage'])),
      serviceAccessRoleArn: pulumi.Input.fromValue(map['serviceAccessRoleArn'] as String),
    );
  }
}
