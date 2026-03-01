// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_configuration.dart';

/// Properties of the Topics Configuration.
class TopicsConfiguration {
  /// List of custom domain configurations for the namespace.
  final List<CustomDomainConfiguration>? customDomains;

  /// Creates a new [TopicsConfiguration].
  /// [customDomains] List of custom domain configurations for the namespace.
  TopicsConfiguration({
    this.customDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomains': ?customDomains == null ? null : pulumi.Input.encodeList<CustomDomainConfiguration, Map<String, dynamic>>(customDomains!, (value) => value.toMap()),
    };
  }

  factory TopicsConfiguration.fromMap(Map<String, dynamic> map) {
    return TopicsConfiguration(
      customDomains: map['customDomains'] == null ? null : pulumi.Input.decodeList<CustomDomainConfiguration>(map['customDomains'], (value) => CustomDomainConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

