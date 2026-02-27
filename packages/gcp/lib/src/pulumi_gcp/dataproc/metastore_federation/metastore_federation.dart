import 'package:pulumi/pulumi.dart' as pulumi;
import '../metastore_federation_backend_metastore/metastore_federation_backend_metastore.dart';
import 'metastore_federation_args.dart';

/// A managed metastore federation.
///
///
///
/// ## Example Usage
///
/// ### Dataproc Metastore Federation Basic
///
///
///
/// ### Dataproc Metastore Federation Bigquery
///
///
///
///
/// ## Import
///
/// Federation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/federations/{{federation_id}}`
///
/// * `{{project}}/{{location}}/{{federation_id}}`
///
/// * `{{location}}/{{federation_id}}`
///
/// When using the `pulumi import` command, Federation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederation:MetastoreFederation default projects/{{project}}/locations/{{location}}/federations/{{federation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederation:MetastoreFederation default {{project}}/{{location}}/{{federation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederation:MetastoreFederation default {{location}}/{{federation_id}}
/// ```
class MetastoreFederation extends pulumi.CustomResource {
  /// A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  /// Structure is documented below.
  late final pulumi.Output<List<MetastoreFederationBackendMetastore>>
      backendMetastores;

  /// Output only. The time when the metastore federation was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deletionProtection;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The URI of the endpoint used to access the metastore federation.
  late final pulumi.Output<String> endpointUri;

  /// The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 63 characters.
  late final pulumi.Output<String> federationId;

  /// User-defined labels for the metastore federation.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where the metastore federation should reside.
  late final pulumi.Output<String?> location;

  /// The relative resource name of the metastore federation.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The current state of the metastore federation.
  late final pulumi.Output<String> state;

  /// Additional information about the current state of the metastore federation, if available.
  late final pulumi.Output<String> stateMessage;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The globally unique resource identifier of the metastore federation.
  late final pulumi.Output<String> uid;

  /// Output only. The time when the metastore federation was last updated.
  late final pulumi.Output<String> updateTime;

  /// The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  late final pulumi.Output<String> version;

  MetastoreFederation(
    String name, {
    MetastoreFederationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreFederation:MetastoreFederation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendMetastores =
        registerOutput<List<MetastoreFederationBackendMetastore>>(
            'backendMetastores');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.endpointUri = registerOutput<String>('endpointUri');
    this.federationId = registerOutput<String>('federationId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<String>('version');
  }
}
