// ignore_for_file: unused_element, unnecessary_cast

class EndpointElasticsearchSettings {
  /// Endpoint for the OpenSearch cluster.
  final String endpointUri;

  /// Maximum number of seconds for which DMS retries failed API requests to the OpenSearch cluster. Default is `300`.
  final int? errorRetryDuration;

  /// Maximum percentage of records that can fail to be written before a full load operation stops. Default is `10`.
  final int? fullLoadErrorPercentage;

  /// ARN of the IAM Role with permissions to write to the OpenSearch cluster.
  final String serviceAccessRoleArn;

  /// Enable to migrate documentation using the documentation type `_doc`. OpenSearch and an Elasticsearch clusters only support the _doc documentation type in versions 7.x and later. The default value is `false`.
  final bool? useNewMappingType;

  EndpointElasticsearchSettings({
    required this.endpointUri,
    this.errorRetryDuration,
    this.fullLoadErrorPercentage,
    required this.serviceAccessRoleArn,
    this.useNewMappingType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointUri'] = endpointUri;
    final errorRetryDurationValue = errorRetryDuration;
    if (errorRetryDurationValue != null) {
      map['errorRetryDuration'] = errorRetryDurationValue;
    }
    final fullLoadErrorPercentageValue = fullLoadErrorPercentage;
    if (fullLoadErrorPercentageValue != null) {
      map['fullLoadErrorPercentage'] = fullLoadErrorPercentageValue;
    }
    map['serviceAccessRoleArn'] = serviceAccessRoleArn;
    final useNewMappingTypeValue = useNewMappingType;
    if (useNewMappingTypeValue != null) {
      map['useNewMappingType'] = useNewMappingTypeValue;
    }
    return map;
  }

  factory EndpointElasticsearchSettings.fromMap(Map<String, dynamic> map) {
    return EndpointElasticsearchSettings(
      endpointUri: map['endpointUri'] as String,
      errorRetryDuration: map['errorRetryDuration'] == null
          ? null
          : map['errorRetryDuration'] as int,
      fullLoadErrorPercentage: map['fullLoadErrorPercentage'] == null
          ? null
          : map['fullLoadErrorPercentage'] as int,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] as String,
      useNewMappingType: map['useNewMappingType'] == null
          ? null
          : map['useNewMappingType'] as bool,
    );
  }
}
