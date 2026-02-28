import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_notification_config_response.dart';
import 'fhir_store_args.dart';
import 'notification_config_response.dart';
import 'stream_config_response.dart';
import 'validation_config_response.dart';

/// Creates a new FHIR store within the parent dataset.
/// Auto-naming is currently not supported for this resource.
class FhirStore extends pulumi.CustomResource {
  /// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  late final pulumi.Output<String> complexDataTypeReferenceParsing;
  late final pulumi.Output<String> datasetId;
  /// If true, overrides the default search behavior for this FHIR store to `handling=strict` which returns an error for unrecognized search parameters. If false, uses the FHIR specification default `handling=lenient` which ignores unrecognized search parameters. The handling can always be changed from the default on an individual API call by setting the HTTP header `Prefer: handling=strict` or `Prefer: handling=lenient`.
  late final pulumi.Output<bool> defaultSearchHandlingStrict;
  /// Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store creation. The default value is false, meaning that the API enforces referential integrity and fails the requests that result in inconsistent state in the FHIR store. When this field is set to true, the API skips referential integrity checks. Consequently, operations that rely on references, such as GetPatientEverything, do not return all the results if broken references exist.
  late final pulumi.Output<bool> disableReferentialIntegrity;
  /// Immutable. Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation of FHIR store. If set to false, which is the default behavior, all write operations cause historical versions to be recorded automatically. The historical versions can be fetched through the history APIs, but cannot be updated. If set to true, no historical versions are kept. The server sends errors for attempts to read the historical versions.
  late final pulumi.Output<bool> disableResourceVersioning;
  /// Whether this FHIR store has the [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate). This determines if the client can use an Update operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through the Create operation and attempts to update a non-existent resource return errors. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud audit logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources.
  late final pulumi.Output<bool> enableUpdateCreate;
  /// The ID of the FHIR store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  late final pulumi.Output<String?> fhirStoreId;
  /// User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Resource name of the FHIR store, of the form `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  late final pulumi.Output<String> name;
  /// Deprecated. Use `notification_configs` instead. If non-empty, publish all resource modifications of this FHIR store to this destination. The Pub/Sub message attributes contain a map with a string describing the action that has triggered the notification. For example, "action":"CreateResource".
  late final pulumi.Output<NotificationConfigResponse> notificationConfig;
  /// Specifies where and whether to send notifications upon changes to a FHIR store.
  late final pulumi.Output<List<FhirNotificationConfigResponse>> notificationConfigs;
  late final pulumi.Output<String> project;
  /// A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor) role to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/iam/docs/service-accounts). Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.
  late final pulumi.Output<List<StreamConfigResponse>> streamConfigs;
  /// Configuration for how to validate incoming FHIR resources against configured profiles.
  late final pulumi.Output<ValidationConfigResponse> validationConfig;
  /// Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
  late final pulumi.Output<String> version;

  /// Creates a new [FhirStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FhirStore]. {@macro pulumi_healthcare_v1_fhir_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FhirStore(
    String name, {
    FhirStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:FhirStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.complexDataTypeReferenceParsing = registerOutput<String>('complexDataTypeReferenceParsing');
    this.datasetId = registerOutput<String>('datasetId');
    this.defaultSearchHandlingStrict = registerOutput<bool>('defaultSearchHandlingStrict');
    this.disableReferentialIntegrity = registerOutput<bool>('disableReferentialIntegrity');
    this.disableResourceVersioning = registerOutput<bool>('disableResourceVersioning');
    this.enableUpdateCreate = registerOutput<bool>('enableUpdateCreate');
    this.fhirStoreId = registerOutput<String?>('fhirStoreId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notificationConfig = registerOutput<NotificationConfigResponse>('notificationConfig');
    this.notificationConfigs = registerOutput<List<FhirNotificationConfigResponse>>('notificationConfigs');
    this.project = registerOutput<String>('project');
    this.streamConfigs = registerOutput<List<StreamConfigResponse>>('streamConfigs');
    this.validationConfig = registerOutput<ValidationConfigResponse>('validationConfig');
    this.version = registerOutput<String>('version');
  }
}
