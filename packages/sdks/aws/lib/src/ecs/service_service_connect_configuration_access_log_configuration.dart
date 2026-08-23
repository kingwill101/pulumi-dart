// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceServiceConnectConfigurationAccessLogConfiguration {
  /// Format for Service Connect access log output. Valid values: `TEXT`, `JSON`. See [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect-envoy-access-logs.html) for format details.
  final pulumi.Input<String> format;
  /// Whether to include query parameters in Service Connect access logs. Valid values: `ENABLED`, `DISABLED`. Default: `DISABLED`. Query parameters may contain sensitive information.
  ///
  /// &gt; **NOTE:** Access logs are delivered to the destination log group specified in the `logConfiguration` block. You must configure `logConfiguration` to enable access logs.
  ///
  /// &gt; **SECURITY WARNING:** When `includeQueryParameters` is set to `ENABLED`, query parameters (which may contain sensitive data such as request IDs, tokens, or session identifiers) will be included in access logs.
  final pulumi.Input<String>? includeQueryParameters;

  /// Creates a new [ServiceServiceConnectConfigurationAccessLogConfiguration].
  /// [format] Format for Service Connect access log output. Valid values: `TEXT`, `JSON`. See [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect-envoy-access-logs.html) for format details.
  /// [includeQueryParameters] Whether to include query parameters in Service Connect access logs. Valid values: `ENABLED`, `DISABLED`. Default: `DISABLED`. Query parameters may contain sensitive information.
  const ServiceServiceConnectConfigurationAccessLogConfiguration({
    required this.format,
    this.includeQueryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'includeQueryParameters': ?includeQueryParameters,
    };
  }

  factory ServiceServiceConnectConfigurationAccessLogConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationAccessLogConfiguration(
      format: pulumi.Input.fromValue(map['format'] as String),
      includeQueryParameters: (() { final guardedValue = map['includeQueryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
