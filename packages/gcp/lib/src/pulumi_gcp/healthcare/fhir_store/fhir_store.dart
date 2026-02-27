import 'package:pulumi/pulumi.dart' as pulumi;
import '../fhir_store_consent_config/fhir_store_consent_config.dart';
import '../fhir_store_notification_config/fhir_store_notification_config.dart';
import '../fhir_store_stream_config/fhir_store_stream_config.dart';
import '../fhir_store_validation_config/fhir_store_validation_config.dart';
import 'fhir_store_args.dart';

/// A FhirStore is a datastore inside a Healthcare dataset that conforms to the FHIR (https://www.hl7.org/fhir/STU3/)
/// standard for Healthcare information exchange
///
///
/// To get more information about FhirStore, see:
///
/// * [API documentation](https://cloud.google.com/healthcare/docs/reference/rest/v1/projects.locations.datasets.fhirStores)
/// * How-to Guides
/// * [Creating a FHIR store](https://cloud.google.com/healthcare/docs/how-tos/fhir)
///
/// ## Example Usage
///
/// ### Healthcare Fhir Store Basic
///
///
///
/// ### Healthcare Fhir Store Streaming Config
///
///
///
/// ### Healthcare Fhir Store Notification Configs
///
///
///
/// ### Healthcare Fhir Store Consent Config
///
///
///
/// ### Healthcare Fhir Store Validation Config
///
///
///
///
/// ## Import
///
/// FhirStore can be imported using any of these accepted formats:
///
/// * `{{dataset}}/fhirStores/{{name}}`
///
/// * `{{dataset}}/{{name}}`
///
/// When using the `pulumi import` command, FhirStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/fhirStore:FhirStore default {{dataset}}/fhirStores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/fhirStore:FhirStore default {{dataset}}/{{name}}
/// ```
class FhirStore extends pulumi.CustomResource {
  /// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED by default after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  /// Possible values are: `COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED`, `DISABLED`, `ENABLED`.
  late final pulumi.Output<String> complexDataTypeReferenceParsing;

  /// Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR version due to absence of Consent resources. Not supported for R5 FHIR version.
  /// Structure is documented below.
  late final pulumi.Output<FhirStoreConsentConfig?> consentConfig;

  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  late final pulumi.Output<String> dataset;

  /// If true, overrides the default search behavior for this FHIR store to handling=strict which returns an error for unrecognized search parameters.
  /// If false, uses the FHIR specification default handling=lenient which ignores unrecognized search parameters.
  /// The handling can always be changed from the default on an individual API call by setting the HTTP header Prefer: handling=strict or Prefer: handling=lenient.
  late final pulumi.Output<bool?> defaultSearchHandlingStrict;

  /// Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store
  /// creation. The default value is false, meaning that the API will enforce referential integrity and fail the
  /// requests that will result in inconsistent state in the FHIR store. When this field is set to true, the API
  /// will skip referential integrity check. Consequently, operations that rely on references, such as
  /// Patient.get$everything, will not return all the results if broken references exist.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  late final pulumi.Output<bool?> disableReferentialIntegrity;

  /// Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation
  /// of FHIR store. If set to false, which is the default behavior, all write operations will cause historical
  /// versions to be recorded automatically. The historical versions can be fetched through the history APIs, but
  /// cannot be updated. If set to true, no historical versions will be kept. The server will send back errors for
  /// attempts to read the historical versions.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  late final pulumi.Output<bool?> disableResourceVersioning;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Whether to allow the bulk import API to accept history bundles and directly insert historical resource
  /// versions into the FHIR store. Importing resource histories creates resource interactions that appear to have
  /// occurred in the past, which clients may not want to allow. If set to false, history bundles within an import
  /// will fail with an error.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  /// ** This property can be changed manually in the Google Cloud Healthcare admin console without recreating the FHIR store **
  late final pulumi.Output<bool?> enableHistoryImport;

  /// Whether to allow the ExecuteBundle API to accept history bundles, and directly insert and overwrite historical
  /// resource versions into the FHIR store. If set to false, using history bundles fails with an error.
  late final pulumi.Output<bool?> enableHistoryModifications;

  /// Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update
  /// operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through
  /// the Create operation and attempts to Update a non-existent resource will return errors. Please treat the audit
  /// logs with appropriate levels of care if client-specified resource IDs contain sensitive data such as patient
  /// identifiers, those IDs will be part of the FHIR resource path recorded in Cloud audit logs and Cloud Pub/Sub
  /// notifications.
  late final pulumi.Output<bool?> enableUpdateCreate;

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
  late final pulumi.Output<Map<String, String>?> labels;

  /// The resource name for the FhirStore.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  late final pulumi.Output<String> name;

  /// (Optional, Deprecated)
  /// A nested object resource.
  /// Structure is documented below.
  ///
  /// > **Warning:** `notification_config` is deprecated and will be removed in a future major release. Use `notification_configs` instead.
  late final pulumi.Output<FhirStoreNotificationConfig?> notificationConfig;

  /// A list of notifcation configs that configure the notification for every resource mutation in this FHIR store.
  /// Structure is documented below.
  late final pulumi.Output<List<FhirStoreNotificationConfig>?>
      notificationConfigs;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The fully qualified name of this dataset
  late final pulumi.Output<String> selfLink;

  /// A list of streaming configs that configure the destinations of streaming export for every resource mutation in
  /// this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next
  /// resource mutation is streamed to the new location in addition to the existing ones. When a location is removed
  /// from the list, the server stops streaming to that location. Before adding a new config, you must add the required
  /// bigquery.dataEditor role to your project's Cloud Healthcare Service Agent service account. Some lag (typically on
  /// the order of dozens of seconds) is expected before the results show up in the streaming destination.
  /// Structure is documented below.
  late final pulumi.Output<List<FhirStoreStreamConfig>?> streamConfigs;

  /// Configuration for how to validate incoming FHIR resources against configured profiles.
  /// Structure is documented below.
  late final pulumi.Output<FhirStoreValidationConfig?> validationConfig;

  /// The FHIR specification version.
  /// Default value is `STU3`.
  /// Possible values are: `DSTU2`, `STU3`, `R4`.
  late final pulumi.Output<String?> version;

  FhirStore(
    String name, {
    FhirStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/fhirStore:FhirStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.complexDataTypeReferenceParsing =
        registerOutput<String>('complexDataTypeReferenceParsing');
    this.consentConfig =
        registerOutput<FhirStoreConsentConfig?>('consentConfig');
    this.dataset = registerOutput<String>('dataset');
    this.defaultSearchHandlingStrict =
        registerOutput<bool?>('defaultSearchHandlingStrict');
    this.disableReferentialIntegrity =
        registerOutput<bool?>('disableReferentialIntegrity');
    this.disableResourceVersioning =
        registerOutput<bool?>('disableResourceVersioning');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableHistoryImport = registerOutput<bool?>('enableHistoryImport');
    this.enableHistoryModifications =
        registerOutput<bool?>('enableHistoryModifications');
    this.enableUpdateCreate = registerOutput<bool?>('enableUpdateCreate');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.notificationConfig =
        registerOutput<FhirStoreNotificationConfig?>('notificationConfig');
    this.notificationConfigs =
        registerOutput<List<FhirStoreNotificationConfig>?>(
            'notificationConfigs');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.selfLink = registerOutput<String>('selfLink');
    this.streamConfigs =
        registerOutput<List<FhirStoreStreamConfig>?>('streamConfigs');
    this.validationConfig =
        registerOutput<FhirStoreValidationConfig?>('validationConfig');
    this.version = registerOutput<String?>('version');
  }
}
