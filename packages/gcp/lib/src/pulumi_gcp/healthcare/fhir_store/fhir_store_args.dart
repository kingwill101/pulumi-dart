// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../fhir_store_consent_config/fhir_store_consent_config.dart';
import '../fhir_store_notification_config/fhir_store_notification_config.dart';
import '../fhir_store_stream_config/fhir_store_stream_config.dart';
import '../fhir_store_validation_config/fhir_store_validation_config.dart';

/// The set of arguments for FhirStore.
class FhirStoreArgs {
  /// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED by default after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  /// Possible values are: `COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED`, `DISABLED`, `ENABLED`.
  final Input<String>? complexDataTypeReferenceParsing;

  /// Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR version due to absence of Consent resources. Not supported for R5 FHIR version.
  /// Structure is documented below.
  final Input<FhirStoreConsentConfig>? consentConfig;

  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final Input<String> dataset;

  /// If true, overrides the default search behavior for this FHIR store to handling=strict which returns an error for unrecognized search parameters.
  /// If false, uses the FHIR specification default handling=lenient which ignores unrecognized search parameters.
  /// The handling can always be changed from the default on an individual API call by setting the HTTP header Prefer: handling=strict or Prefer: handling=lenient.
  final Input<bool>? defaultSearchHandlingStrict;

  /// Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store
  /// creation. The default value is false, meaning that the API will enforce referential integrity and fail the
  /// requests that will result in inconsistent state in the FHIR store. When this field is set to true, the API
  /// will skip referential integrity check. Consequently, operations that rely on references, such as
  /// Patient.get$everything, will not return all the results if broken references exist.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  final Input<bool>? disableReferentialIntegrity;

  /// Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation
  /// of FHIR store. If set to false, which is the default behavior, all write operations will cause historical
  /// versions to be recorded automatically. The historical versions can be fetched through the history APIs, but
  /// cannot be updated. If set to true, no historical versions will be kept. The server will send back errors for
  /// attempts to read the historical versions.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  final Input<bool>? disableResourceVersioning;

  /// Whether to allow the bulk import API to accept history bundles and directly insert historical resource
  /// versions into the FHIR store. Importing resource histories creates resource interactions that appear to have
  /// occurred in the past, which clients may not want to allow. If set to false, history bundles within an import
  /// will fail with an error.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  /// ** This property can be changed manually in the Google Cloud Healthcare admin console without recreating the FHIR store **
  final Input<bool>? enableHistoryImport;

  /// Whether to allow the ExecuteBundle API to accept history bundles, and directly insert and overwrite historical
  /// resource versions into the FHIR store. If set to false, using history bundles fails with an error.
  final Input<bool>? enableHistoryModifications;

  /// Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update
  /// operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through
  /// the Create operation and attempts to Update a non-existent resource will return errors. Please treat the audit
  /// logs with appropriate levels of care if client-specified resource IDs contain sensitive data such as patient
  /// identifiers, those IDs will be part of the FHIR resource path recorded in Cloud audit logs and Cloud Pub/Sub
  /// notifications.
  final Input<bool>? enableUpdateCreate;

  /// User-supplied key-value pairs used to organize FHIR stores.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
  /// bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be associated with a given store.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The resource name for the FhirStore.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  final Input<String>? name;

  /// (Optional, Deprecated)
  /// A nested object resource.
  /// Structure is documented below.
  ///
  /// > **Warning:** `notification_config` is deprecated and will be removed in a future major release. Use `notification_configs` instead.
  final Input<FhirStoreNotificationConfig>? notificationConfig;

  /// A list of notifcation configs that configure the notification for every resource mutation in this FHIR store.
  /// Structure is documented below.
  final Input<List<FhirStoreNotificationConfig>>? notificationConfigs;

  /// A list of streaming configs that configure the destinations of streaming export for every resource mutation in
  /// this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next
  /// resource mutation is streamed to the new location in addition to the existing ones. When a location is removed
  /// from the list, the server stops streaming to that location. Before adding a new config, you must add the required
  /// bigquery.dataEditor role to your project's Cloud Healthcare Service Agent service account. Some lag (typically on
  /// the order of dozens of seconds) is expected before the results show up in the streaming destination.
  /// Structure is documented below.
  final Input<List<FhirStoreStreamConfig>>? streamConfigs;

  /// Configuration for how to validate incoming FHIR resources against configured profiles.
  /// Structure is documented below.
  final Input<FhirStoreValidationConfig>? validationConfig;

  /// The FHIR specification version.
  /// Default value is `STU3`.
  /// Possible values are: `DSTU2`, `STU3`, `R4`.
  final Input<String>? version;

  FhirStoreArgs({
    this.complexDataTypeReferenceParsing,
    this.consentConfig,
    required this.dataset,
    this.defaultSearchHandlingStrict,
    this.disableReferentialIntegrity,
    this.disableResourceVersioning,
    this.enableHistoryImport,
    this.enableHistoryModifications,
    this.enableUpdateCreate,
    this.labels,
    this.name,
    this.notificationConfig,
    this.notificationConfigs,
    this.streamConfigs,
    this.validationConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final complexDataTypeReferenceParsingValue =
        complexDataTypeReferenceParsing;
    if (complexDataTypeReferenceParsingValue != null) {
      map['complexDataTypeReferenceParsing'] =
          complexDataTypeReferenceParsingValue;
    }
    final consentConfigValue = consentConfig;
    if (consentConfigValue != null) {
      map['consentConfig'] = Input.mapOptionalInputValue<FhirStoreConsentConfig,
          Map<String, dynamic>>(consentConfigValue, (value) => value.toMap());
    }
    map['dataset'] = dataset;
    final defaultSearchHandlingStrictValue = defaultSearchHandlingStrict;
    if (defaultSearchHandlingStrictValue != null) {
      map['defaultSearchHandlingStrict'] = defaultSearchHandlingStrictValue;
    }
    final disableReferentialIntegrityValue = disableReferentialIntegrity;
    if (disableReferentialIntegrityValue != null) {
      map['disableReferentialIntegrity'] = disableReferentialIntegrityValue;
    }
    final disableResourceVersioningValue = disableResourceVersioning;
    if (disableResourceVersioningValue != null) {
      map['disableResourceVersioning'] = disableResourceVersioningValue;
    }
    final enableHistoryImportValue = enableHistoryImport;
    if (enableHistoryImportValue != null) {
      map['enableHistoryImport'] = enableHistoryImportValue;
    }
    final enableHistoryModificationsValue = enableHistoryModifications;
    if (enableHistoryModificationsValue != null) {
      map['enableHistoryModifications'] = enableHistoryModificationsValue;
    }
    final enableUpdateCreateValue = enableUpdateCreate;
    if (enableUpdateCreateValue != null) {
      map['enableUpdateCreate'] = enableUpdateCreateValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = Input.mapOptionalInputValue<
              FhirStoreNotificationConfig, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final notificationConfigsValue = notificationConfigs;
    if (notificationConfigsValue != null) {
      map['notificationConfigs'] = Input.mapOptionalInputValue<
              List<FhirStoreNotificationConfig>, List<Map<String, dynamic>>>(
          notificationConfigsValue,
          (value) => Input.encodeList<FhirStoreNotificationConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final streamConfigsValue = streamConfigs;
    if (streamConfigsValue != null) {
      map['streamConfigs'] = Input.mapOptionalInputValue<
              List<FhirStoreStreamConfig>, List<Map<String, dynamic>>>(
          streamConfigsValue,
          (value) =>
              Input.encodeList<FhirStoreStreamConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final validationConfigValue = validationConfig;
    if (validationConfigValue != null) {
      map['validationConfig'] = Input.mapOptionalInputValue<
              FhirStoreValidationConfig, Map<String, dynamic>>(
          validationConfigValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory FhirStoreArgs.fromMap(Map<String, dynamic> map) {
    return FhirStoreArgs(
      complexDataTypeReferenceParsing:
          Input.asOptionalInput<String>(map['complexDataTypeReferenceParsing']),
      consentConfig:
          Input.asOptionalInput<FhirStoreConsentConfig>(map['consentConfig']),
      dataset: Input.asInput<String>(map['dataset']),
      defaultSearchHandlingStrict:
          Input.asOptionalInput<bool>(map['defaultSearchHandlingStrict']),
      disableReferentialIntegrity:
          Input.asOptionalInput<bool>(map['disableReferentialIntegrity']),
      disableResourceVersioning:
          Input.asOptionalInput<bool>(map['disableResourceVersioning']),
      enableHistoryImport:
          Input.asOptionalInput<bool>(map['enableHistoryImport']),
      enableHistoryModifications:
          Input.asOptionalInput<bool>(map['enableHistoryModifications']),
      enableUpdateCreate:
          Input.asOptionalInput<bool>(map['enableUpdateCreate']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      notificationConfig: Input.asOptionalInput<FhirStoreNotificationConfig>(
          map['notificationConfig']),
      notificationConfigs:
          Input.asOptionalInput<List<FhirStoreNotificationConfig>>(
              map['notificationConfigs']),
      streamConfigs: Input.asOptionalInput<List<FhirStoreStreamConfig>>(
          map['streamConfigs']),
      validationConfig: Input.asOptionalInput<FhirStoreValidationConfig>(
          map['validationConfig']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
