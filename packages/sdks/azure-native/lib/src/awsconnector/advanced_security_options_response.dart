// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'samloptions_output_response.dart';

/// Definition of AdvancedSecurityOptions
class AdvancedSecurityOptionsResponse {
  /// <p>Date and time when the migration period will be disabled. Only necessary when <a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing'>enabling fine-grained access control on an existing domain</a>.</p>
  final pulumi.Input<String>? anonymousAuthDisableDate;
  /// <p>True if a 30-day migration period is enabled, during which administrators can create role mappings. Only necessary when <a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing'>enabling fine-grained access control on an existing domain</a>.</p>
  final pulumi.Input<bool>? anonymousAuthEnabled;
  /// <p>True if fine-grained access control is enabled.</p>
  final pulumi.Input<bool>? enabled;
  /// <p>True if the internal user database is enabled.</p>
  final pulumi.Input<bool>? internalUserDatabaseEnabled;
  /// <p>Container for information about the SAML configuration for OpenSearch Dashboards.</p>
  final pulumi.Input<SAMLOptionsOutputResponse>? samlOptions;

  /// Creates a new [AdvancedSecurityOptionsResponse].
  /// [anonymousAuthDisableDate] <p>Date and time when the migration period will be disabled. Only necessary when <a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing'>enabling fine-grained access control on an existing domain</a>.</p>
  /// [anonymousAuthEnabled] <p>True if a 30-day migration period is enabled, during which administrators can create role mappings. Only necessary when <a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing'>enabling fine-grained access control on an existing domain</a>.</p>
  /// [enabled] <p>True if fine-grained access control is enabled.</p>
  /// [internalUserDatabaseEnabled] <p>True if the internal user database is enabled.</p>
  /// [samlOptions] <p>Container for information about the SAML configuration for OpenSearch Dashboards.</p>
  AdvancedSecurityOptionsResponse({
    this.anonymousAuthDisableDate,
    this.anonymousAuthEnabled,
    this.enabled,
    this.internalUserDatabaseEnabled,
    this.samlOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousAuthDisableDate': ?anonymousAuthDisableDate,
      'anonymousAuthEnabled': ?anonymousAuthEnabled,
      'enabled': ?enabled,
      'internalUserDatabaseEnabled': ?internalUserDatabaseEnabled,
      'samlOptions': ?pulumi.Input.mapOptionalInputValue<SAMLOptionsOutputResponse, Map<String, dynamic>>(samlOptions, (value) => value.toMap()),
    };
  }

  factory AdvancedSecurityOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedSecurityOptionsResponse(
      anonymousAuthDisableDate: map['anonymousAuthDisableDate'] == null ? null : (map['anonymousAuthDisableDate'] as String).input(),
      anonymousAuthEnabled: map['anonymousAuthEnabled'] == null ? null : (map['anonymousAuthEnabled'] as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      internalUserDatabaseEnabled: map['internalUserDatabaseEnabled'] == null ? null : (map['internalUserDatabaseEnabled'] as bool).input(),
      samlOptions: map['samlOptions'] == null ? null : (SAMLOptionsOutputResponse.fromMap((map['samlOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

