// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_settings_appengine_v1alpha.dart';

/// The set of arguments for DomainMapping.
class DomainMappingAppengineV1alphaArgs {
  final pulumi.Input<String> appId;

  /// Relative name of the domain serving the application. Example: example.com.
  final pulumi.Input<String>? id;

  /// Whether a managed certificate should be provided by App Engine. If true, a certificate ID must be manaually set in the DomainMapping resource to configure SSL for this domain. If false, a managed certificate will be provisioned and a certificate ID will be automatically populated.
  final pulumi.Input<bool>? noManagedCertificate;

  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  final pulumi.Input<String>? overrideStrategy;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final pulumi.Input<SslSettingsAppengineV1alpha>? sslSettings;

  DomainMappingAppengineV1alphaArgs({
    required this.appId,
    this.id,
    this.noManagedCertificate,
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
    final noManagedCertificateValue = noManagedCertificate;
    if (noManagedCertificateValue != null) {
      map['noManagedCertificate'] = noManagedCertificateValue;
    }
    final overrideStrategyValue = overrideStrategy;
    if (overrideStrategyValue != null) {
      map['overrideStrategy'] = overrideStrategyValue;
    }
    final sslSettingsValue = sslSettings;
    if (sslSettingsValue != null) {
      map['sslSettings'] = pulumi.Input.mapOptionalInputValue<
          SslSettingsAppengineV1alpha,
          Map<String, dynamic>>(sslSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainMappingAppengineV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingAppengineV1alphaArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      noManagedCertificate:
          pulumi.Input.asOptionalInput<bool>(map['noManagedCertificate']),
      overrideStrategy:
          pulumi.Input.asOptionalInput<String>(map['overrideStrategy']),
      sslSettings: pulumi.Input.asOptionalInput<SslSettingsAppengineV1alpha>(
          map['sslSettings']),
    );
  }
}
