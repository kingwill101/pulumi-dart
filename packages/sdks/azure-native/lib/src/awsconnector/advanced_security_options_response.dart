// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'samloptions_output_response.dart';

/// Definition of AdvancedSecurityOptions
class AdvancedSecurityOptionsResponse {
  /// &lt;p&gt;Date and time when the migration period will be disabled. Only necessary when &lt;a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing'&gt;enabling fine-grained access control on an existing domain&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String?>? anonymousAuthDisableDate;
  /// &lt;p&gt;True if a 30-day migration period is enabled, during which administrators can create role mappings. Only necessary when &lt;a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing'&gt;enabling fine-grained access control on an existing domain&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<bool?>? anonymousAuthEnabled;
  /// &lt;p&gt;True if fine-grained access control is enabled.&lt;/p&gt;
  final pulumi.Input<bool?>? enabled;
  /// &lt;p&gt;True if the internal user database is enabled.&lt;/p&gt;
  final pulumi.Input<bool?>? internalUserDatabaseEnabled;
  /// &lt;p&gt;Container for information about the SAML configuration for OpenSearch Dashboards.&lt;/p&gt;
  final pulumi.Input<SAMLOptionsOutputResponse?>? samlOptions;

  /// Creates a new [AdvancedSecurityOptionsResponse].
  /// [anonymousAuthDisableDate] &lt;p&gt;Date and time when the migration period will be disabled. Only necessary when &lt;a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing'&gt;enabling fine-grained access control on an existing domain&lt;/a&gt;.&lt;/p&gt;
  /// [anonymousAuthEnabled] &lt;p&gt;True if a 30-day migration period is enabled, during which administrators can create role mappings. Only necessary when &lt;a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing'&gt;enabling fine-grained access control on an existing domain&lt;/a&gt;.&lt;/p&gt;
  /// [enabled] &lt;p&gt;True if fine-grained access control is enabled.&lt;/p&gt;
  /// [internalUserDatabaseEnabled] &lt;p&gt;True if the internal user database is enabled.&lt;/p&gt;
  /// [samlOptions] &lt;p&gt;Container for information about the SAML configuration for OpenSearch Dashboards.&lt;/p&gt;
  const AdvancedSecurityOptionsResponse({
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
      anonymousAuthDisableDate: (() { final guardedValue = map['anonymousAuthDisableDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      anonymousAuthEnabled: (() { final guardedValue = map['anonymousAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internalUserDatabaseEnabled: (() { final guardedValue = map['internalUserDatabaseEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      samlOptions: (() { final guardedValue = map['samlOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SAMLOptionsOutputResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
