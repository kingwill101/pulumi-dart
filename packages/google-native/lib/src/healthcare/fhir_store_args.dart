// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_notification_config.dart';
import 'fhir_store_complex_data_type_reference_parsing.dart';
import 'fhir_store_version.dart';
import 'notification_config.dart';
import 'stream_config.dart';
import 'validation_config.dart';

/// {@template pulumi_healthcare_v1_fhir_store_args_doc}
/// The set of arguments for FhirStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_fhir_store_args_doc}
class FhirStoreArgs {
  /// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  final pulumi.Input<FhirStoreComplexDataTypeReferenceParsing>?
  complexDataTypeReferenceParsing;
  final pulumi.Input<String> datasetId;

  /// If true, overrides the default search behavior for this FHIR store to `handling=strict` which returns an error for unrecognized search parameters. If false, uses the FHIR specification default `handling=lenient` which ignores unrecognized search parameters. The handling can always be changed from the default on an individual API call by setting the HTTP header `Prefer: handling=strict` or `Prefer: handling=lenient`.
  final pulumi.Input<bool>? defaultSearchHandlingStrict;

  /// Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store creation. The default value is false, meaning that the API enforces referential integrity and fails the requests that result in inconsistent state in the FHIR store. When this field is set to true, the API skips referential integrity checks. Consequently, operations that rely on references, such as GetPatientEverything, do not return all the results if broken references exist.
  final pulumi.Input<bool>? disableReferentialIntegrity;

  /// Immutable. Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation of FHIR store. If set to false, which is the default behavior, all write operations cause historical versions to be recorded automatically. The historical versions can be fetched through the history APIs, but cannot be updated. If set to true, no historical versions are kept. The server sends errors for attempts to read the historical versions.
  final pulumi.Input<bool>? disableResourceVersioning;

  /// Whether this FHIR store has the [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate). This determines if the client can use an Update operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through the Create operation and attempts to update a non-existent resource return errors. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud audit logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources.
  final pulumi.Input<bool>? enableUpdateCreate;

  /// The ID of the FHIR store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  final pulumi.Input<String>? fhirStoreId;

  /// User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Deprecated. Use `notification_configs` instead. If non-empty, publish all resource modifications of this FHIR store to this destination. The Pub/Sub message attributes contain a map with a string describing the action that has triggered the notification. For example, "action":"CreateResource".
  final pulumi.Input<NotificationConfig>? notificationConfig;

  /// Specifies where and whether to send notifications upon changes to a FHIR store.
  final pulumi.Input<List<FhirNotificationConfig>>? notificationConfigs;
  final pulumi.Input<String>? project;

  /// A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor) role to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/iam/docs/service-accounts). Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.
  final pulumi.Input<List<StreamConfig>>? streamConfigs;

  /// Configuration for how to validate incoming FHIR resources against configured profiles.
  final pulumi.Input<ValidationConfig>? validationConfig;

  /// Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
  final pulumi.Input<FhirStoreVersion>? version;

  /// Creates a new [FhirStoreArgs].
  /// [complexDataTypeReferenceParsing] Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  /// [datasetId] Required.
  /// [defaultSearchHandlingStrict] If true, overrides the default search behavior for this FHIR store to `handling=strict` which returns an error for unrecognized search parameters. If false, uses the FHIR specification default `handling=lenient` which ignores unrecognized search parameters. The handling can always be changed from the default on an individual API call by setting the HTTP header `Prefer: handling=strict` or `Prefer: handling=lenient`.
  /// [disableReferentialIntegrity] Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store creation. The default value is false, meaning that the API enforces referential integrity and fails the requests that result in inconsistent state in the FHIR store. When this field is set to true, the API skips referential integrity checks. Consequently, operations that rely on references, such as GetPatientEverything, do not return all the results if broken references exist.
  /// [disableResourceVersioning] Immutable. Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation of FHIR store. If set to false, which is the default behavior, all write operations cause historical versions to be recorded automatically. The historical versions can be fetched through the history APIs, but cannot be updated. If set to true, no historical versions are kept. The server sends errors for attempts to read the historical versions.
  /// [enableUpdateCreate] Whether this FHIR store has the [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate). This determines if the client can use an Update operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through the Create operation and attempts to update a non-existent resource return errors. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud audit logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources.
  /// [fhirStoreId] The ID of the FHIR store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  /// [labels] User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [location] Optional.
  /// [notificationConfig] Deprecated. Use `notification_configs` instead. If non-empty, publish all resource modifications of this FHIR store to this destination. The Pub/Sub message attributes contain a map with a string describing the action that has triggered the notification. For example, "action":"CreateResource".
  /// [notificationConfigs] Specifies where and whether to send notifications upon changes to a FHIR store.
  /// [project] Optional.
  /// [streamConfigs] A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor) role to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/iam/docs/service-accounts). Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.
  /// [validationConfig] Configuration for how to validate incoming FHIR resources against configured profiles.
  /// [version] Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
  FhirStoreArgs({
    FhirStoreComplexDataTypeReferenceParsing? complexDataTypeReferenceParsing,
    required String datasetId,
    bool? defaultSearchHandlingStrict,
    bool? disableReferentialIntegrity,
    bool? disableResourceVersioning,
    bool? enableUpdateCreate,
    String? fhirStoreId,
    Map<String, String>? labels,
    String? location,
    NotificationConfig? notificationConfig,
    List<FhirNotificationConfig>? notificationConfigs,
    String? project,
    List<StreamConfig>? streamConfigs,
    ValidationConfig? validationConfig,
    FhirStoreVersion? version,
  }) : complexDataTypeReferenceParsing =
           pulumi.Input.asOptionalInput<
             FhirStoreComplexDataTypeReferenceParsing
           >(complexDataTypeReferenceParsing),
       datasetId = pulumi.Input.asInput<String>(datasetId),
       defaultSearchHandlingStrict = pulumi.Input.asOptionalInput<bool>(
         defaultSearchHandlingStrict,
       ),
       disableReferentialIntegrity = pulumi.Input.asOptionalInput<bool>(
         disableReferentialIntegrity,
       ),
       disableResourceVersioning = pulumi.Input.asOptionalInput<bool>(
         disableResourceVersioning,
       ),
       enableUpdateCreate = pulumi.Input.asOptionalInput<bool>(
         enableUpdateCreate,
       ),
       fhirStoreId = pulumi.Input.asOptionalInput<String>(fhirStoreId),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       notificationConfig = pulumi.Input.asOptionalInput<NotificationConfig>(
         notificationConfig,
       ),
       notificationConfigs =
           pulumi.Input.asOptionalInput<List<FhirNotificationConfig>>(
             notificationConfigs,
           ),
       project = pulumi.Input.asOptionalInput<String>(project),
       streamConfigs = pulumi.Input.asOptionalInput<List<StreamConfig>>(
         streamConfigs,
       ),
       validationConfig = pulumi.Input.asOptionalInput<ValidationConfig>(
         validationConfig,
       ),
       version = pulumi.Input.asOptionalInput<FhirStoreVersion>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complexDataTypeReferenceParsing':
          ?pulumi.Input.mapOptionalInputValue<
            FhirStoreComplexDataTypeReferenceParsing,
            String
          >(complexDataTypeReferenceParsing, (value) => value.value),
      'datasetId': datasetId,
      'defaultSearchHandlingStrict': ?defaultSearchHandlingStrict,
      'disableReferentialIntegrity': ?disableReferentialIntegrity,
      'disableResourceVersioning': ?disableResourceVersioning,
      'enableUpdateCreate': ?enableUpdateCreate,
      'fhirStoreId': ?fhirStoreId,
      'labels': ?labels,
      'location': ?location,
      'notificationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NotificationConfig,
            Map<String, dynamic>
          >(notificationConfig, (value) => value.toMap()),
      'notificationConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<FhirNotificationConfig>,
            List<Map<String, dynamic>>
          >(
            notificationConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  FhirNotificationConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'streamConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<StreamConfig>,
            List<Map<String, dynamic>>
          >(
            streamConfigs,
            (value) =>
                pulumi.Input.encodeList<StreamConfig, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'validationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ValidationConfig,
            Map<String, dynamic>
          >(validationConfig, (value) => value.toMap()),
      'version': ?pulumi.Input.mapOptionalInputValue<FhirStoreVersion, String>(
        version,
        (value) => value.value,
      ),
    };
  }

  factory FhirStoreArgs.fromMap(Map<String, dynamic> map) {
    return FhirStoreArgs(
      complexDataTypeReferenceParsing:
          map['complexDataTypeReferenceParsing'] == null
          ? null
          : FhirStoreComplexDataTypeReferenceParsing.fromValue(
              map['complexDataTypeReferenceParsing'] as String,
            ),
      datasetId: map['datasetId'] as String,
      defaultSearchHandlingStrict: map['defaultSearchHandlingStrict'] == null
          ? null
          : map['defaultSearchHandlingStrict'] as bool,
      disableReferentialIntegrity: map['disableReferentialIntegrity'] == null
          ? null
          : map['disableReferentialIntegrity'] as bool,
      disableResourceVersioning: map['disableResourceVersioning'] == null
          ? null
          : map['disableResourceVersioning'] as bool,
      enableUpdateCreate: map['enableUpdateCreate'] == null
          ? null
          : map['enableUpdateCreate'] as bool,
      fhirStoreId: map['fhirStoreId'] == null
          ? null
          : map['fhirStoreId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      notificationConfig: map['notificationConfig'] == null
          ? null
          : NotificationConfig.fromMap(
              (map['notificationConfig'] as Map).cast<String, dynamic>(),
            ),
      notificationConfigs: map['notificationConfigs'] == null
          ? null
          : pulumi.Input.decodeList<FhirNotificationConfig>(
              map['notificationConfigs'],
              (value) => FhirNotificationConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      streamConfigs: map['streamConfigs'] == null
          ? null
          : pulumi.Input.decodeList<StreamConfig>(
              map['streamConfigs'],
              (value) =>
                  StreamConfig.fromMap((value as Map).cast<String, dynamic>()),
            ),
      validationConfig: map['validationConfig'] == null
          ? null
          : ValidationConfig.fromMap(
              (map['validationConfig'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null
          ? null
          : FhirStoreVersion.fromValue(map['version'] as String),
    );
  }
}
