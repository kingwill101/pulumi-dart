// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_configuration.dart';

/// Properties of the Topics Configuration.
class TopicsConfiguration {
  /// List of custom domain configurations for the namespace.
  final pulumi.Input<List<CustomDomainConfiguration>>? customDomains;

  /// Creates a new [TopicsConfiguration].
  /// [customDomains] List of custom domain configurations for the namespace.
  const TopicsConfiguration({
    this.customDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomains': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainConfiguration>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<CustomDomainConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TopicsConfiguration.fromMap(Map<String, dynamic> map) {
    return TopicsConfiguration(
      customDomains: (() { final guardedValue = map['customDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomDomainConfiguration>(guardedValue, (value) => CustomDomainConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
