import 'package:pulumi/pulumi.dart';
import '../ai_metadata_store_encryption_spec/ai_metadata_store_encryption_spec.dart';
import '../ai_metadata_store_state/ai_metadata_store_state.dart';
import 'ai_metadata_store_args.dart';

/// Instance of a metadata store. Contains a set of metadata that can be queried.
///
/// To get more information about MetadataStore, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.metadataStores)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Metadata Store
///
///
///
///
/// ## Import
///
/// MetadataStore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/metadataStores/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, MetadataStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default projects/{{project}}/locations/{{region}}/metadataStores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default {{name}}
/// ```
class AiMetadataStore extends CustomResource {
  /// The timestamp of when the MetadataStore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// Description of the MetadataStore.
  late final Output<String?> description;

  /// Customer-managed encryption key spec for a MetadataStore. If set, this MetadataStore and all sub-resources of this MetadataStore will be secured by this key.
  /// Structure is documented below.
  late final Output<AiMetadataStoreEncryptionSpec?> encryptionSpec;

  /// The name of the MetadataStore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of the Metadata Store. eg us-central1
  late final Output<String> region;

  /// State information of the MetadataStore.
  /// Structure is documented below.
  late final Output<List<AiMetadataStoreState>> states;

  /// The timestamp of when the MetadataStore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  AiMetadataStore(
    String name, {
    AiMetadataStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiMetadataStore:AiMetadataStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.encryptionSpec =
        registerOutput<AiMetadataStoreEncryptionSpec?>('encryptionSpec');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.states = registerOutput<List<AiMetadataStoreState>>('states');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
