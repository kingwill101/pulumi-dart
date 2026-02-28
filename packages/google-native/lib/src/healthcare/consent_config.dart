// ignore_for_file: unused_element, unnecessary_cast

import 'access_determination_log_config.dart';
import 'consent_config_version.dart';
import 'consent_header_handling.dart';

/// Configures whether to enforce consent for the FHIR store and which consent enforcement version is being used.
class ConsentConfig {
  /// Optional. Specifies how the server logs the consent-aware requests. If not specified, the `AccessDeterminationLogConfig.LogLevel.MINIMUM` option is used.
  final AccessDeterminationLogConfig? accessDeterminationLogConfig;

  /// Optional. If set to true, when accessing FHIR resources, the consent headers provided using [SMART-on-FHIR](https://cloud.google.com/healthcare/private/docs/how-tos/smart-on-fhir) will be verified against consents given by patients. See the ConsentEnforcementVersion for the supported consent headers.
  final bool? accessEnforced;

  /// Optional. Different options to configure the behaviour of the server when handling the `X-Consent-Scope` header.
  final ConsentHeaderHandling? consentHeaderHandling;

  /// The versioned names of the enforced admin Consent resource(s), in the format `projects/{project_id}/locations/{location}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/Consent/{resource_id}/_history/{version_id}`. For FHIR stores with `disable_resource_versioning=true`, the format is `projects/{project_id}/locations/{location}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/Consent/{resource_id}`. This field can only be updated using ApplyAdminConsents.
  final List<String>? enforcedAdminConsents;

  /// Specifies which consent enforcement version is being used for this FHIR store. This field can only be set once by either CreateFhirStore or UpdateFhirStore. After that, you must call ApplyConsents to change the version.
  final ConsentConfigVersion version;

  /// Creates a new [ConsentConfig].
  /// [accessDeterminationLogConfig] Optional. Specifies how the server logs the consent-aware requests. If not specified, the `AccessDeterminationLogConfig.LogLevel.MINIMUM` option is used.
  /// [accessEnforced] Optional. If set to true, when accessing FHIR resources, the consent headers provided using [SMART-on-FHIR](https://cloud.google.com/healthcare/private/docs/how-tos/smart-on-fhir) will be verified against consents given by patients. See the ConsentEnforcementVersion for the supported consent headers.
  /// [consentHeaderHandling] Optional. Different options to configure the behaviour of the server when handling the `X-Consent-Scope` header.
  /// [enforcedAdminConsents] The versioned names of the enforced admin Consent resource(s), in the format `projects/{project_id}/locations/{location}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/Consent/{resource_id}/_history/{version_id}`. For FHIR stores with `disable_resource_versioning=true`, the format is `projects/{project_id}/locations/{location}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/Consent/{resource_id}`. This field can only be updated using ApplyAdminConsents.
  /// [version] Specifies which consent enforcement version is being used for this FHIR store. This field can only be set once by either CreateFhirStore or UpdateFhirStore. After that, you must call ApplyConsents to change the version.
  ConsentConfig({
    this.accessDeterminationLogConfig,
    this.accessEnforced,
    this.consentHeaderHandling,
    this.enforcedAdminConsents,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessDeterminationLogConfigValue = accessDeterminationLogConfig;
    if (accessDeterminationLogConfigValue != null) {
      map['accessDeterminationLogConfig'] =
          accessDeterminationLogConfigValue.toMap();
    }
    final accessEnforcedValue = accessEnforced;
    if (accessEnforcedValue != null) {
      map['accessEnforced'] = accessEnforcedValue;
    }
    final consentHeaderHandlingValue = consentHeaderHandling;
    if (consentHeaderHandlingValue != null) {
      map['consentHeaderHandling'] = consentHeaderHandlingValue.toMap();
    }
    final enforcedAdminConsentsValue = enforcedAdminConsents;
    if (enforcedAdminConsentsValue != null) {
      map['enforcedAdminConsents'] = enforcedAdminConsentsValue;
    }
    map['version'] = version.value;
    return map;
  }

  factory ConsentConfig.fromMap(Map<String, dynamic> map) {
    return ConsentConfig(
      accessDeterminationLogConfig: map['accessDeterminationLogConfig'] == null
          ? null
          : AccessDeterminationLogConfig.fromMap(
              (map['accessDeterminationLogConfig'] as Map)
                  .cast<String, dynamic>()),
      accessEnforced:
          map['accessEnforced'] == null ? null : map['accessEnforced'] as bool,
      consentHeaderHandling: map['consentHeaderHandling'] == null
          ? null
          : ConsentHeaderHandling.fromMap(
              (map['consentHeaderHandling'] as Map).cast<String, dynamic>()),
      enforcedAdminConsents: map['enforcedAdminConsents'] == null
          ? null
          : (map['enforcedAdminConsents'] as List).cast<String>(),
      version: ConsentConfigVersion.fromValue(map['version'] as String),
    );
  }
}
