import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_deployed_index_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_private_service_connect_config_response.dart';
import 'index_endpoint_args.dart';

/// Creates an IndexEndpoint.
/// Auto-naming is currently not supported for this resource.
class IndexEndpoint extends pulumi.CustomResource {
  /// Timestamp when this IndexEndpoint was created.
  late final pulumi.Output<String> createTime;
  /// The indexes deployed in this endpoint.
  late final pulumi.Output<List<GoogleCloudAiplatformV1DeployedIndexResponse>> deployedIndexes;
  /// The description of the IndexEndpoint.
  late final pulumi.Output<String> description;
  /// The display name of the IndexEndpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;
  /// Optional. Deprecated: If true, expose the IndexEndpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  late final pulumi.Output<bool> enablePrivateServiceConnect;
  /// Immutable. Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  late final pulumi.Output<GoogleCloudAiplatformV1EncryptionSpecResponse> encryptionSpec;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  /// The labels with user-defined metadata to organize your IndexEndpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The resource name of the IndexEndpoint.
  late final pulumi.Output<String> name;
  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the IndexEndpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. network and private_service_connect_config are mutually exclusive. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in '12345', and {network} is network name.
  late final pulumi.Output<String> network;
  /// Optional. Configuration for private service connect. network and private_service_connect_config are mutually exclusive.
  late final pulumi.Output<GoogleCloudAiplatformV1PrivateServiceConnectConfigResponse> privateServiceConnectConfig;
  late final pulumi.Output<String> project;
  /// If public_endpoint_enabled is true, this field will be populated with the domain name to use for this index endpoint.
  late final pulumi.Output<String> publicEndpointDomainName;
  /// Optional. If true, the deployed index will be accessible through public endpoint.
  late final pulumi.Output<bool> publicEndpointEnabled;
  /// Timestamp when this IndexEndpoint was last updated. This timestamp is not updated when the endpoint's DeployedIndexes are updated, e.g. due to updates of the original Indexes they are the deployments of.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [IndexEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IndexEndpoint]. {@macro pulumi_aiplatform_v1_index_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IndexEndpoint(
    String name, {
    IndexEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:IndexEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deployedIndexes = registerOutput<List<GoogleCloudAiplatformV1DeployedIndexResponse>>('deployedIndexes');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.enablePrivateServiceConnect = registerOutput<bool>('enablePrivateServiceConnect');
    this.encryptionSpec = registerOutput<GoogleCloudAiplatformV1EncryptionSpecResponse>('encryptionSpec');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.privateServiceConnectConfig = registerOutput<GoogleCloudAiplatformV1PrivateServiceConnectConfigResponse>('privateServiceConnectConfig');
    this.project = registerOutput<String>('project');
    this.publicEndpointDomainName = registerOutput<String>('publicEndpointDomainName');
    this.publicEndpointEnabled = registerOutput<bool>('publicEndpointEnabled');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
