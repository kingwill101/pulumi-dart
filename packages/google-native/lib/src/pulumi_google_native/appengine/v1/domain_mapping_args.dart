// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'ssl_settings.dart';

/// The set of arguments for DomainMapping.
class DomainMappingArgs {
  final Input<String> appId;

  /// Relative name of the domain serving the application. Example: example.com.
  final Input<String>? id;

  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  final Input<String>? overrideStrategy;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final Input<SslSettings>? sslSettings;

  DomainMappingArgs({
    required this.appId,
    this.id,
    this.overrideStrategy,
    this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final overrideStrategyValue = overrideStrategy;
    if (overrideStrategyValue != null) {
      map['overrideStrategy'] = overrideStrategyValue;
    }
    final sslSettingsValue = sslSettings;
    if (sslSettingsValue != null) {
      map['sslSettings'] =
          Input.mapOptionalInputValue<SslSettings, Map<String, dynamic>>(
              sslSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs(
      appId: Input.asInput<String>(map['appId']),
      id: Input.asOptionalInput<String>(map['id']),
      overrideStrategy: Input.asOptionalInput<String>(map['overrideStrategy']),
      sslSettings: Input.asOptionalInput<SslSettings>(map['sslSettings']),
    );
  }
}
