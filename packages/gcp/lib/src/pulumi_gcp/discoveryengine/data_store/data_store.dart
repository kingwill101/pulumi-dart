import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_store_advanced_site_search_config/data_store_advanced_site_search_config.dart';
import '../data_store_document_processing_config/data_store_document_processing_config.dart';
import 'data_store_args.dart';

/// Data store is a collection of websites and documents used to find answers for
/// end-user's questions in Discovery Engine (a.k.a. Vertex AI Search and
/// Conversation).
///
///
/// To get more information about DataStore, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.dataStores)
/// * How-to Guides
/// * [Create a search data store](https://cloud.google.com/generative-ai-app-builder/docs/create-data-store-es)
///
/// ## Example Usage
///
/// ### Discoveryengine Datastore Basic
///
///
///
/// ### Discoveryengine Datastore Kms Key Name
///
///
///
/// ### Discoveryengine Datastore Document Processing Config
///
///
///
/// ### Discoveryengine Datastore Advanced Site Search Config
///
///
///
///
/// ## Import
///
/// DataStore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}`
///
/// * `{{project}}/{{location}}/{{data_store_id}}`
///
/// * `{{location}}/{{data_store_id}}`
///
/// When using the `pulumi import` command, DataStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/dataStore:DataStore default projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/dataStore:DataStore default {{project}}/{{location}}/{{data_store_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/dataStore:DataStore default {{location}}/{{data_store_id}}
/// ```
class DataStore extends pulumi.CustomResource {
  /// Configuration data for advance site search.
  /// Structure is documented below.
  late final pulumi.Output<DataStoreAdvancedSiteSearchConfig>
      advancedSiteSearchConfig;

  /// The content config of the data store.
  /// Possible values are: `NO_CONTENT`, `CONTENT_REQUIRED`, `PUBLIC_WEBSITE`.
  late final pulumi.Output<String> contentConfig;

  /// If true, an advanced data store for site search will be created. If the
  /// data store is not configured as site search (GENERIC vertical and
  /// PUBLIC_WEBSITE contentConfig), this flag will be ignored.
  late final pulumi.Output<bool?> createAdvancedSiteSearch;

  /// Timestamp when the DataStore was created.
  late final pulumi.Output<String> createTime;

  /// The unique id of the data store.
  late final pulumi.Output<String> dataStoreId;

  /// The id of the default Schema associated with this data store.
  late final pulumi.Output<String> defaultSchemaId;

  /// The display name of the data store. This field must be a UTF-8 encoded
  /// string with a length limit of 128 characters.
  late final pulumi.Output<String> displayName;

  /// Configuration for Document understanding and enrichment.
  /// Structure is documented below.
  late final pulumi.Output<DataStoreDocumentProcessingConfig?>
      documentProcessingConfig;

  /// The industry vertical that the data store registers.
  /// Possible values are: `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`.
  late final pulumi.Output<String> industryVertical;

  /// KMS key resource name which will be used to encrypt resources:
  /// `/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`
  /// The KMS key to be used to protect this DataStore at creation time. Must be
  /// set for requests that need to comply with CMEK Org Policy protections.
  /// If this field is set and processed successfully, the DataStore will be
  /// protected by the KMS key, as indicated in the cmek_config field.
  late final pulumi.Output<String?> kmsKeyName;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// The unique full resource name of the data store. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A boolean flag indicating whether to skip the default schema creation for
  /// the data store. Only enable this flag if you are certain that the default
  /// schema is incompatible with your use case.
  /// If set to true, you must manually create a schema for the data store
  /// before any documents can be ingested.
  /// This flag cannot be specified if `data_store.starting_schema` is
  /// specified.
  late final pulumi.Output<bool?> skipDefaultSchemaCreation;

  /// The solutions that the data store enrolls.
  /// Each value may be one of: `SOLUTION_TYPE_RECOMMENDATION`, `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_GENERATIVE_CHAT`.
  late final pulumi.Output<List<String>?> solutionTypes;

  DataStore(
    String name, {
    DataStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/dataStore:DataStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedSiteSearchConfig =
        registerOutput<DataStoreAdvancedSiteSearchConfig>(
            'advancedSiteSearchConfig');
    this.contentConfig = registerOutput<String>('contentConfig');
    this.createAdvancedSiteSearch =
        registerOutput<bool?>('createAdvancedSiteSearch');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.defaultSchemaId = registerOutput<String>('defaultSchemaId');
    this.displayName = registerOutput<String>('displayName');
    this.documentProcessingConfig =
        registerOutput<DataStoreDocumentProcessingConfig?>(
            'documentProcessingConfig');
    this.industryVertical = registerOutput<String>('industryVertical');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.skipDefaultSchemaCreation =
        registerOutput<bool?>('skipDefaultSchemaCreation');
    this.solutionTypes = registerOutput<List<String>?>('solutionTypes');
  }
}
