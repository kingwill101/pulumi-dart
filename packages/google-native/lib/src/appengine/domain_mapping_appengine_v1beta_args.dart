// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_settings_appengine_v1beta.dart';

/// {@template pulumi_appengine_v1beta_domain_mapping_appengine_v1beta_args_doc}
/// The set of arguments for DomainMapping.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_domain_mapping_appengine_v1beta_args_doc}
class DomainMappingAppengineV1betaArgs {
  final pulumi.Input<String> appId;

  /// Relative name of the domain serving the application. Example: example.com.
  final pulumi.Input<String>? id;

  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  final pulumi.Input<String>? overrideStrategy;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final pulumi.Input<SslSettingsAppengineV1beta>? sslSettings;

  /// Creates a new [DomainMappingAppengineV1betaArgs].
  /// [appId] Required.
  /// [id] Relative name of the domain serving the application. Example: example.com.
  /// [overrideStrategy] Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  /// [sslSettings] SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  DomainMappingAppengineV1betaArgs({
    required String appId,
    String? id,
    String? overrideStrategy,
    SslSettingsAppengineV1beta? sslSettings,
  }) : appId = pulumi.Input.asInput<String>(appId),
       id = pulumi.Input.asOptionalInput<String>(id),
       overrideStrategy = pulumi.Input.asOptionalInput<String>(
         overrideStrategy,
       ),
       sslSettings = pulumi.Input.asOptionalInput<SslSettingsAppengineV1beta>(
         sslSettings,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'id': ?id,
      'overrideStrategy': ?overrideStrategy,
      'sslSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SslSettingsAppengineV1beta,
            Map<String, dynamic>
          >(sslSettings, (value) => value.toMap()),
    };
  }

  factory DomainMappingAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingAppengineV1betaArgs(
      appId: map['appId'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      overrideStrategy: map['overrideStrategy'] == null
          ? null
          : map['overrideStrategy'] as String,
      sslSettings: map['sslSettings'] == null
          ? null
          : SslSettingsAppengineV1beta.fromMap(
              (map['sslSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
