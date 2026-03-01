// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointElasticsearchSetting {
  final String endpointUri;
  final int errorRetryDuration;
  final int fullLoadErrorPercentage;
  final String serviceAccessRoleArn;

  /// Creates a new [GetEndpointElasticsearchSetting].
  /// [endpointUri] Required.
  /// [errorRetryDuration] Required.
  /// [fullLoadErrorPercentage] Required.
  /// [serviceAccessRoleArn] Required.
  GetEndpointElasticsearchSetting({
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
      endpointUri: map['endpointUri'] as String,
      errorRetryDuration: map['errorRetryDuration'] as int,
      fullLoadErrorPercentage: map['fullLoadErrorPercentage'] as int,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] as String,
    );
  }
}
