// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'fhir_notification_config.dart';
import 'fhir_store_complex_data_type_reference_parsing.dart';
import 'fhir_store_version.dart';
import 'notification_config3.dart';
import 'stream_config.dart';
import 'validation_config.dart';

/// The set of arguments for FhirStore.
class FhirStoreArgs {
  /// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  final Input<FhirStoreComplexDataTypeReferenceParsing>?
      complexDataTypeReferenceParsing;
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
  final Input<NotificationConfig3>? notificationConfig;

  /// Specifies where and whether to send notifications upon changes to a FHIR store.
  final Input<List<FhirNotificationConfig>>? notificationConfigs;
  final Input<String>? project;

  /// A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor) role to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/iam/docs/service-accounts). Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.
  final Input<List<StreamConfig>>? streamConfigs;

  /// Configuration for how to validate incoming FHIR resources against configured profiles.
  final Input<ValidationConfig>? validationConfig;

  /// Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
  final Input<FhirStoreVersion>? version;

  FhirStoreArgs({
    this.complexDataTypeReferenceParsing,
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
          FhirStoreComplexDataTypeReferenceParsing,
          String>(complexDataTypeReferenceParsingValue, (value) => value.value);
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
              NotificationConfig3, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final notificationConfigsValue = notificationConfigs;
    if (notificationConfigsValue != null) {
      map['notificationConfigs'] = Input.mapOptionalInputValue<
              List<FhirNotificationConfig>, List<Map<String, dynamic>>>(
          notificationConfigsValue,
          (value) =>
              Input.encodeList<FhirNotificationConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final streamConfigsValue = streamConfigs;
    if (streamConfigsValue != null) {
      map['streamConfigs'] = Input.mapOptionalInputValue<List<StreamConfig>,
              List<Map<String, dynamic>>>(
          streamConfigsValue,
          (value) => Input.encodeList<StreamConfig, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final validationConfigValue = validationConfig;
    if (validationConfigValue != null) {
      map['validationConfig'] =
          Input.mapOptionalInputValue<ValidationConfig, Map<String, dynamic>>(
              validationConfigValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = Input.mapOptionalInputValue<FhirStoreVersion, String>(
          versionValue, (value) => value.value);
    }
    return map;
  }

  factory FhirStoreArgs.fromMap(Map<String, dynamic> map) {
    return FhirStoreArgs(
      complexDataTypeReferenceParsing:
          Input.asOptionalInput<FhirStoreComplexDataTypeReferenceParsing>(
              map['complexDataTypeReferenceParsing']),
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
          Input.asOptionalInput<NotificationConfig3>(map['notificationConfig']),
      notificationConfigs: Input.asOptionalInput<List<FhirNotificationConfig>>(
          map['notificationConfigs']),
      project: Input.asOptionalInput<String>(map['project']),
      streamConfigs:
          Input.asOptionalInput<List<StreamConfig>>(map['streamConfigs']),
      validationConfig:
          Input.asOptionalInput<ValidationConfig>(map['validationConfig']),
      version: Input.asOptionalInput<FhirStoreVersion>(map['version']),
    );
  }
}
