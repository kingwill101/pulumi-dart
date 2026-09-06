// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_configuration_response.dart';

/// Properties of the Topics Configuration.
class TopicsConfigurationResponse {
  /// List of custom domain configurations for the namespace.
  final pulumi.Input<List<CustomDomainConfigurationResponse>?>? customDomains;
  /// The hostname for the topics configuration. This is a read-only property.
  final pulumi.Input<String> hostname;

  /// Creates a new [TopicsConfigurationResponse].
  /// [customDomains] List of custom domain configurations for the namespace.
  /// [hostname] The hostname for the topics configuration. This is a read-only property.
  const TopicsConfigurationResponse({
    this.customDomains,
    required this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomains': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainConfigurationResponse>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<CustomDomainConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': hostname,
    };
  }

  factory TopicsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TopicsConfigurationResponse(
      customDomains: (() { final guardedValue = map['customDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomDomainConfigurationResponse>(guardedValue, (value) => CustomDomainConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
    );
  }
}
