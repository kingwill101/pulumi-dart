// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'consent_config.dart';
import 'fhir_notification_config2.dart';
import 'fhir_store_complex_data_type_reference_parsing2.dart';
import 'fhir_store_version2.dart';
import 'notification_config4.dart';
import 'search_config.dart';
import 'stream_config2.dart';
import 'validation_config2.dart';

/// The set of arguments for FhirStore.
class FhirStoreArgs2 {
  /// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  final Input<FhirStoreComplexDataTypeReferenceParsing2>?
      complexDataTypeReferenceParsing;

  /// Optional. Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR version due to absence of Consent resources.
  final Input<ConsentConfig>? consentConfig;
  final Input<String> datasetId;

  /// If true, overrides the default search behavior for this FHIR store to `handling=strict` which returns an error for unrecognized search parameters. If false, uses the FHIR specification default `handling=lenient` which ignores unrecognized search parameters. The handling can always be changed from the default on an individual API call by setting the HTTP header `Prefer: handling=strict` or `Prefer: handling=lenient`.
  final Input<bool>? defaultSearchHandlingStrict;

  /// Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store creation. The default value is false, meaning that the API enforces referential integrity and fails the requests that result in inconsistent state in the FHIR store. When this field is set to true, the API skips referential integrity checks. Consequently, operations that rely on references, such as GetPatientEverything, do not return all the results if broken references exist.
  final Input<bool>? disableReferentialIntegrity;

  /// Immutable. Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation of FHIR store. If set to false, which is the default behavior, all write operations cause historical versions to be recorded automatically. The historical versions can be fetched through the history APIs, but cannot be updated. If set to true, no historical versions are kept. The server sends errors for attempts to read the historical versions.
  final Input<bool>? disableResourceVersioning;

  /// Whether this FHIR store has the [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate). This determines if the client can use an Update operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through the Create operation and attempts to update a non-existent resource return errors. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud audit logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources.
  final Input<bool>? enableUpdateCreate;

  /// The ID of the FHIR store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  final Input<String>? fhirStoreId;

  /// User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Deprecated. Use `notification_configs` instead. If non-empty, publish all resource modifications of this FHIR store to this destination. The Pub/Sub message attributes contain a map with a string describing the action that has triggered the notification. For example, "action":"CreateResource".
  final Input<NotificationConfig4>? notificationConfig;

  /// Specifies where and whether to send notifications upon changes to a Fhir store.
  final Input<List<FhirNotificationConfig2>>? notificationConfigs;
  final Input<String>? project;

  /// Configuration for how FHIR resources can be searched.
  final Input<SearchConfig>? searchConfig;

  /// A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor) role to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/iam/docs/service-accounts). Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.
  final Input<List<StreamConfig2>>? streamConfigs;

  /// Configuration for how to validate incoming FHIR resources against configured profiles.
  final Input<ValidationConfig2>? validationConfig;

  /// Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
  final Input<FhirStoreVersion2>? version;

  FhirStoreArgs2({
    this.complexDataTypeReferenceParsing,
    this.consentConfig,
    required this.datasetId,
    this.defaultSearchHandlingStrict,
    this.disableReferentialIntegrity,
    this.disableResourceVersioning,
    this.enableUpdateCreate,
    this.fhirStoreId,
    this.labels,
    this.location,
    this.notificationConfig,
    this.notificationConfigs,
    this.project,
    this.searchConfig,
    this.streamConfigs,
    this.validationConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final complexDataTypeReferenceParsingValue =
        complexDataTypeReferenceParsing;
    if (complexDataTypeReferenceParsingValue != null) {
      map['complexDataTypeReferenceParsing'] = Input.mapOptionalInputValue<
          FhirStoreComplexDataTypeReferenceParsing2,
          String>(complexDataTypeReferenceParsingValue, (value) => value.value);
    }
    final consentConfigValue = consentConfig;
    if (consentConfigValue != null) {
      map['consentConfig'] =
          Input.mapOptionalInputValue<ConsentConfig, Map<String, dynamic>>(
              consentConfigValue, (value) => value.toMap());
    }
    map['datasetId'] = datasetId;
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
    final enableUpdateCreateValue = enableUpdateCreate;
    if (enableUpdateCreateValue != null) {
      map['enableUpdateCreate'] = enableUpdateCreateValue;
    }
    final fhirStoreIdValue = fhirStoreId;
    if (fhirStoreIdValue != null) {
      map['fhirStoreId'] = fhirStoreIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = Input.mapOptionalInputValue<
              NotificationConfig4, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final notificationConfigsValue = notificationConfigs;
    if (notificationConfigsValue != null) {
      map['notificationConfigs'] = Input.mapOptionalInputValue<
              List<FhirNotificationConfig2>, List<Map<String, dynamic>>>(
          notificationConfigsValue,
          (value) =>
              Input.encodeList<FhirNotificationConfig2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final searchConfigValue = searchConfig;
    if (searchConfigValue != null) {
      map['searchConfig'] =
          Input.mapOptionalInputValue<SearchConfig, Map<String, dynamic>>(
              searchConfigValue, (value) => value.toMap());
    }
    final streamConfigsValue = streamConfigs;
    if (streamConfigsValue != null) {
      map['streamConfigs'] = Input.mapOptionalInputValue<List<StreamConfig2>,
              List<Map<String, dynamic>>>(
          streamConfigsValue,
          (value) => Input.encodeList<StreamConfig2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final validationConfigValue = validationConfig;
    if (validationConfigValue != null) {
      map['validationConfig'] =
          Input.mapOptionalInputValue<ValidationConfig2, Map<String, dynamic>>(
              validationConfigValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = Input.mapOptionalInputValue<FhirStoreVersion2, String>(
          versionValue, (value) => value.value);
    }
    return map;
  }

  factory FhirStoreArgs2.fromMap(Map<String, dynamic> map) {
    return FhirStoreArgs2(
      complexDataTypeReferenceParsing:
          Input.asOptionalInput<FhirStoreComplexDataTypeReferenceParsing2>(
              map['complexDataTypeReferenceParsing']),
      consentConfig: Input.asOptionalInput<ConsentConfig>(map['consentConfig']),
      datasetId: Input.asInput<String>(map['datasetId']),
      defaultSearchHandlingStrict:
          Input.asOptionalInput<bool>(map['defaultSearchHandlingStrict']),
      disableReferentialIntegrity:
          Input.asOptionalInput<bool>(map['disableReferentialIntegrity']),
      disableResourceVersioning:
          Input.asOptionalInput<bool>(map['disableResourceVersioning']),
      enableUpdateCreate:
          Input.asOptionalInput<bool>(map['enableUpdateCreate']),
      fhirStoreId: Input.asOptionalInput<String>(map['fhirStoreId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      notificationConfig:
          Input.asOptionalInput<NotificationConfig4>(map['notificationConfig']),
      notificationConfigs: Input.asOptionalInput<List<FhirNotificationConfig2>>(
          map['notificationConfigs']),
      project: Input.asOptionalInput<String>(map['project']),
      searchConfig: Input.asOptionalInput<SearchConfig>(map['searchConfig']),
      streamConfigs:
          Input.asOptionalInput<List<StreamConfig2>>(map['streamConfigs']),
      validationConfig:
          Input.asOptionalInput<ValidationConfig2>(map['validationConfig']),
      version: Input.asOptionalInput<FhirStoreVersion2>(map['version']),
    );
  }
}
