// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointElasticsearchSettings {
  /// Endpoint for the OpenSearch cluster.
  final pulumi.Input<String> endpointUri;
  /// Maximum number of seconds for which DMS retries failed API requests to the OpenSearch cluster. Default is `300`.
  final pulumi.Input<int?>? errorRetryDuration;
  /// Maximum percentage of records that can fail to be written before a full load operation stops. Default is `10`.
  final pulumi.Input<int?>? fullLoadErrorPercentage;
  /// ARN of the IAM Role with permissions to write to the OpenSearch cluster.
  final pulumi.Input<String> serviceAccessRoleArn;
  /// Enable to migrate documentation using the documentation type `_doc`. OpenSearch and an Elasticsearch clusters only support the _doc documentation type in versions 7.x and later. The default value is `false`.
  final pulumi.Input<bool?>? useNewMappingType;

  /// Creates a new [EndpointElasticsearchSettings].
  /// [endpointUri] Endpoint for the OpenSearch cluster.
  /// [errorRetryDuration] Maximum number of seconds for which DMS retries failed API requests to the OpenSearch cluster. Default is `300`.
  /// [fullLoadErrorPercentage] Maximum percentage of records that can fail to be written before a full load operation stops. Default is `10`.
  /// [serviceAccessRoleArn] ARN of the IAM Role with permissions to write to the OpenSearch cluster.
  /// [useNewMappingType] Enable to migrate documentation using the documentation type `_doc`. OpenSearch and an Elasticsearch clusters only support the _doc documentation type in versions 7.x and later. The default value is `false`.
  const EndpointElasticsearchSettings({
    required this.endpointUri,
    this.errorRetryDuration,
    this.fullLoadErrorPercentage,
    required this.serviceAccessRoleArn,
    this.useNewMappingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUri': endpointUri,
      'errorRetryDuration': ?errorRetryDuration,
      'fullLoadErrorPercentage': ?fullLoadErrorPercentage,
      'serviceAccessRoleArn': serviceAccessRoleArn,
      'useNewMappingType': ?useNewMappingType,
    };
  }

  factory EndpointElasticsearchSettings.fromMap(Map<String, dynamic> map) {
    return EndpointElasticsearchSettings(
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      errorRetryDuration: (() { final guardedValue = map['errorRetryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      fullLoadErrorPercentage: (() { final guardedValue = map['fullLoadErrorPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serviceAccessRoleArn: pulumi.Input.fromValue(map['serviceAccessRoleArn'] as String),
      useNewMappingType: (() { final guardedValue = map['useNewMappingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
