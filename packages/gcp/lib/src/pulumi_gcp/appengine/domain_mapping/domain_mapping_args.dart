// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_mapping_ssl_settings/domain_mapping_ssl_settings.dart';

/// The set of arguments for DomainMapping.
class DomainMappingArgs {
  /// Relative name of the domain serving the application. Example: example.com.
  final pulumi.Input<String> domainName;

  /// Whether the domain creation should override any existing mappings for this domain.
  /// By default, overrides are rejected.
  /// Default value is `STRICT`.
  /// Possible values are: `STRICT`, `OVERRIDE`.
  final pulumi.Input<String>? overrideStrategy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  /// Structure is documented below.
  final pulumi.Input<DomainMappingSslSettings>? sslSettings;

  DomainMappingArgs({
    required this.domainName,
    this.overrideStrategy,
    this.project,
    this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final overrideStrategyValue = overrideStrategy;
    if (overrideStrategyValue != null) {
      map['overrideStrategy'] = overrideStrategyValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sslSettingsValue = sslSettings;
    if (sslSettingsValue != null) {
      map['sslSettings'] = pulumi.Input.mapOptionalInputValue<
          DomainMappingSslSettings,
          Map<String, dynamic>>(sslSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs(
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      overrideStrategy:
          pulumi.Input.asOptionalInput<String>(map['overrideStrategy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sslSettings: pulumi.Input.asOptionalInput<DomainMappingSslSettings>(
          map['sslSettings']),
    );
  }
}
