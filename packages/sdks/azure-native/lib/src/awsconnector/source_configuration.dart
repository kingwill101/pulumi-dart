// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SourceConfiguration
class SourceConfiguration {
  /// The name of the application associated with the configuration.
  final pulumi.Input<String>? applicationName;
  /// The name of the configuration template.
  final pulumi.Input<String>? templateName;

  /// Creates a new [SourceConfiguration].
  /// [applicationName] The name of the application associated with the configuration.
  /// [templateName] The name of the configuration template.
  SourceConfiguration({
    this.applicationName,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'templateName': ?templateName,
    };
  }

  factory SourceConfiguration.fromMap(Map<String, dynamic> map) {
    return SourceConfiguration(
      applicationName: map['applicationName'] == null ? null : (map['applicationName'] as String).input(),
      templateName: map['templateName'] == null ? null : (map['templateName'] as String).input(),
    );
  }
}

