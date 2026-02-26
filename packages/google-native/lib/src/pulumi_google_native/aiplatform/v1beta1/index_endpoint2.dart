import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_deployed_index_response.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_private_service_connect_config_response.dart';
import 'index_endpoint_args2.dart';

/// Creates an IndexEndpoint.
/// Auto-naming is currently not supported for this resource.
class IndexEndpoint2 extends CustomResource {
  /// Timestamp when this IndexEndpoint was created.
  late final Output<String> createTime;

  /// The indexes deployed in this endpoint.
  late final Output<List<GoogleCloudAiplatformV1beta1DeployedIndexResponse>>
      deployedIndexes;

  /// The description of the IndexEndpoint.
  late final Output<String> description;

  /// The display name of the IndexEndpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Optional. Deprecated: If true, expose the IndexEndpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  late final Output<bool> enablePrivateServiceConnect;

  /// Immutable. Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  late final Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
      encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;

  /// The labels with user-defined metadata to organize your IndexEndpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the IndexEndpoint.
  late final Output<String> name;

  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the IndexEndpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. network and private_service_connect_config are mutually exclusive. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in '12345', and {network} is network name.
  late final Output<String> network;

  /// Optional. Configuration for private service connect. network and private_service_connect_config are mutually exclusive.
  late final Output<
          GoogleCloudAiplatformV1beta1PrivateServiceConnectConfigResponse>
      privateServiceConnectConfig;
  late final Output<String> project;

  /// If public_endpoint_enabled is true, this field will be populated with the domain name to use for this index endpoint.
  late final Output<String> publicEndpointDomainName;

  /// Optional. If true, the deployed index will be accessible through public endpoint.
  late final Output<bool> publicEndpointEnabled;

  /// Timestamp when this IndexEndpoint was last updated. This timestamp is not updated when the endpoint's DeployedIndexes are updated, e.g. due to updates of the original Indexes they are the deployments of.
  late final Output<String> updateTime;

  IndexEndpoint2(
    String name, {
    IndexEndpointArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:IndexEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deployedIndexes = Output.createUnknown<
        List<GoogleCloudAiplatformV1beta1DeployedIndexResponse>>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.enablePrivateServiceConnect = Output.createUnknown<bool>();
    this.encryptionSpec = Output.createUnknown<
        GoogleCloudAiplatformV1beta1EncryptionSpecResponse>();
    this.etag = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.privateServiceConnectConfig = Output.createUnknown<
        GoogleCloudAiplatformV1beta1PrivateServiceConnectConfigResponse>();
    this.project = Output.createUnknown<String>();
    this.publicEndpointDomainName = Output.createUnknown<String>();
    this.publicEndpointEnabled = Output.createUnknown<bool>();
    this.updateTime = Output.createUnknown<String>();
  }
}
