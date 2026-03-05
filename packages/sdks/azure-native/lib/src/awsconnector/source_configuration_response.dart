// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SourceConfiguration
class SourceConfigurationResponse {
  /// The name of the application associated with the configuration.
  final pulumi.Input<String>? applicationName;
  /// The name of the configuration template.
  final pulumi.Input<String>? templateName;

  /// Creates a new [SourceConfigurationResponse].
  /// [applicationName] The name of the application associated with the configuration.
  /// [templateName] The name of the configuration template.
  SourceConfigurationResponse({
    this.applicationName,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'templateName': ?templateName,
    };
  }

  factory SourceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SourceConfigurationResponse(
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

