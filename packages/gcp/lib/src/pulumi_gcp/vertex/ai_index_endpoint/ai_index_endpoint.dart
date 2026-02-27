import 'package:pulumi/pulumi.dart';
import '../ai_index_endpoint_encryption_spec/ai_index_endpoint_encryption_spec.dart';
import '../ai_index_endpoint_private_service_connect_config/ai_index_endpoint_private_service_connect_config.dart';
import 'ai_index_endpoint_args.dart';

/// An endpoint indexes are deployed into. An index endpoint can have multiple deployed indexes.
///
///
/// To get more information about IndexEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints/)
///
/// ## Example Usage
///
/// ### Vertex Ai Index Endpoint
///
///
///
/// ### Vertex Ai Index Endpoint With Psc
///
///
///
/// ### Vertex Ai Index Endpoint With Public Endpoint
///
///
///
///
/// ## Import
///
/// IndexEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/indexEndpoints/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, IndexEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpoint:AiIndexEndpoint default projects/{{project}}/locations/{{region}}/indexEndpoints/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpoint:AiIndexEndpoint default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpoint:AiIndexEndpoint default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpoint:AiIndexEndpoint default {{name}}
/// ```
class AiIndexEndpoint extends CustomResource {
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// The description of the Index.
  late final Output<String?> description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// Structure is documented below.
  late final Output<AiIndexEndpointEncryptionSpec?> encryptionSpec;

  /// Used to perform consistent read-modify-write updates.
  late final Output<String> etag;

  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The resource name of the Index.
  late final Output<String> name;

  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
  /// Private services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.
  /// [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`.
  /// Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  late final Output<String?> network;

  /// Optional. Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  late final Output<AiIndexEndpointPrivateServiceConnectConfig>
      privateServiceConnectConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// If publicEndpointEnabled is true, this field will be populated with the domain name to use for this index endpoint.
  late final Output<String> publicEndpointDomainName;

  /// If true, the deployed index will be accessible through public endpoint.
  late final Output<bool?> publicEndpointEnabled;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region of the index endpoint. eg us-central1
  late final Output<String?> region;

  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  AiIndexEndpoint(
    String name, {
    AiIndexEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiIndexEndpoint:AiIndexEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionSpec =
        registerOutput<AiIndexEndpointEncryptionSpec?>('encryptionSpec');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.privateServiceConnectConfig =
        registerOutput<AiIndexEndpointPrivateServiceConnectConfig>(
            'privateServiceConnectConfig');
    this.project = registerOutput<String>('project');
    this.publicEndpointDomainName =
        registerOutput<String>('publicEndpointDomainName');
    this.publicEndpointEnabled = registerOutput<bool?>('publicEndpointEnabled');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
