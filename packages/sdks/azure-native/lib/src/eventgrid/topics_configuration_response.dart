// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_configuration_response.dart';

/// Properties of the Topics Configuration.
class TopicsConfigurationResponse {
  /// List of custom domain configurations for the namespace.
  final List<CustomDomainConfigurationResponse>? customDomains;
  /// The hostname for the topics configuration. This is a read-only property.
  final String hostname;

  /// Creates a new [TopicsConfigurationResponse].
  /// [customDomains] List of custom domain configurations for the namespace.
  /// [hostname] The hostname for the topics configuration. This is a read-only property.
  TopicsConfigurationResponse({
    this.customDomains,
    required this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomains': ?customDomains == null ? null : pulumi.Input.encodeList<CustomDomainConfigurationResponse, Map<String, dynamic>>(customDomains!, (value) => value.toMap()),
      'hostname': hostname,
    };
  }

  factory TopicsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TopicsConfigurationResponse(
      customDomains: map['customDomains'] == null ? null : pulumi.Input.decodeList<CustomDomainConfigurationResponse>(map['customDomains'], (value) => CustomDomainConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] as String,
    );
  }
}

