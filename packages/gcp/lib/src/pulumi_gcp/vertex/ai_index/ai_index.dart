import 'package:pulumi/pulumi.dart';
import '../ai_index_deployed_index/ai_index_deployed_index.dart';
import '../ai_index_encryption_spec/ai_index_encryption_spec.dart';
import '../ai_index_index_stat/ai_index_index_stat.dart';
import '../ai_index_metadata/ai_index_metadata.dart';
import 'ai_index_args.dart';

/// A representation of a collection of database items organized in a way that allows for approximate nearest neighbor (a.k.a ANN) algorithms search.
///
///
/// To get more information about Index, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexes/)
///
/// ## Example Usage
///
/// ### Vertex Ai Index
///
///
///
/// ### Vertex Ai Index Streaming
///
///
///
///
/// ## Import
///
/// Index can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/indexes/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Index can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndex:AiIndex default projects/{{project}}/locations/{{region}}/indexes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndex:AiIndex default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndex:AiIndex default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndex:AiIndex default {{name}}
/// ```
class AiIndex extends CustomResource {
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// The pointers to DeployedIndexes created from this Index. An Index can be only deleted if all its DeployedIndexes had been undeployed first.
  /// Structure is documented below.
  late final Output<List<AiIndexDeployedIndex>> deployedIndexes;

  /// The description of the Index.
  late final Output<String?> description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  /// Structure is documented below.
  late final Output<AiIndexEncryptionSpec?> encryptionSpec;

  /// Used to perform consistent read-modify-write updates.
  late final Output<String> etag;

  /// Stats of the index resource.
  /// Structure is documented below.
  late final Output<List<AiIndexIndexStat>> indexStats;

  /// The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
  /// * BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.
  /// * STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time.
  late final Output<String?> indexUpdateMethod;

  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Additional information about the Index.
  /// Although this field is not marked as required in the API specification, it is currently required when creating an Index and must be provided.
  /// Attempts to create an Index without this field will result in an API error.
  /// Structure is documented below.
  late final Output<AiIndexMetadata> metadata;

  /// Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information.
  late final Output<String> metadataSchemaUri;

  /// The resource name of the Index.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region of the index. eg us-central1
  late final Output<String?> region;

  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  AiIndex(
    String name, {
    AiIndexArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiIndex:AiIndex',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deployedIndexes =
        registerOutput<List<AiIndexDeployedIndex>>('deployedIndexes');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionSpec =
        registerOutput<AiIndexEncryptionSpec?>('encryptionSpec');
    this.etag = registerOutput<String>('etag');
    this.indexStats = registerOutput<List<AiIndexIndexStat>>('indexStats');
    this.indexUpdateMethod = registerOutput<String?>('indexUpdateMethod');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.metadata = registerOutput<AiIndexMetadata>('metadata');
    this.metadataSchemaUri = registerOutput<String>('metadataSchemaUri');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
