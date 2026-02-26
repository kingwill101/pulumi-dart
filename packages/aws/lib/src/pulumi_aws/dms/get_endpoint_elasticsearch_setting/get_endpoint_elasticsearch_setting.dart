// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointElasticsearchSetting {
  final String endpointUri;
  final int errorRetryDuration;
  final int fullLoadErrorPercentage;
  final String serviceAccessRoleArn;

  GetEndpointElasticsearchSetting({
    required this.endpointUri,
    required this.errorRetryDuration,
    required this.fullLoadErrorPercentage,
    required this.serviceAccessRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointUri'] = endpointUri;
    map['errorRetryDuration'] = errorRetryDuration;
    map['fullLoadErrorPercentage'] = fullLoadErrorPercentage;
    map['serviceAccessRoleArn'] = serviceAccessRoleArn;
    return map;
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
