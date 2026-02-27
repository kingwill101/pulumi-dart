import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_resource_pool_response.dart';
import 'google_cloud_aiplatform_v1beta1_resource_runtime_response.dart';
import 'google_cloud_aiplatform_v1beta1_resource_runtime_spec_response.dart';
import 'google_rpc_status_response_aiplatform_v1beta1.dart';
import 'persistent_resource_args.dart';

/// Creates a PersistentResource.
class PersistentResource extends pulumi.CustomResource {
  /// Time when the PersistentResource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The display name of the PersistentResource. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;

  /// Optional. Customer-managed encryption key spec for a PersistentResource. If set, this PersistentResource and all sub-resources of this PersistentResource will be secured by this key.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
      encryptionSpec;

  /// Only populated when persistent resource's state is `STOPPING` or `ERROR`.
  late final pulumi.Output<GoogleRpcStatusResponseAiplatformV1beta1> error;

  /// Optional. The labels with user-defined metadata to organize PersistentResource. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Immutable. Resource name of a PersistentResource.
  late final pulumi.Output<String> name;

  /// Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to peered with Vertex AI to host the persistent resources. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the resources aren't peered with any network.
  late final pulumi.Output<String> network;

  /// Required. The ID to use for the PersistentResource, which become the final component of the PersistentResource's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  late final pulumi.Output<String> persistentResourceId;
  late final pulumi.Output<String> project;

  /// Optional. A list of names for the reserved IP ranges under the VPC network that can be used for this persistent resource. If set, we will deploy the persistent resource within the provided IP ranges. Otherwise, the persistent resource is deployed to any IP ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  late final pulumi.Output<List<String>> reservedIpRanges;

  /// The spec of the pools of different resources.
  late final pulumi
      .Output<List<GoogleCloudAiplatformV1beta1ResourcePoolResponse>>
      resourcePools;

  /// Runtime information of the Persistent Resource.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1ResourceRuntimeResponse>
      resourceRuntime;

  /// Optional. Persistent Resource runtime spec. For example, used for Ray cluster configuration.
  late final pulumi
      .Output<GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse>
      resourceRuntimeSpec;

  /// Time when the PersistentResource for the first time entered the `RUNNING` state.
  late final pulumi.Output<String> startTime;

  /// The detailed state of a Study.
  late final pulumi.Output<String> state;

  /// Time when the PersistentResource was most recently updated.
  late final pulumi.Output<String> updateTime;

  PersistentResource(
    String name, {
    PersistentResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:PersistentResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>(
            'encryptionSpec');
    this.error =
        registerOutput<GoogleRpcStatusResponseAiplatformV1beta1>('error');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.persistentResourceId = registerOutput<String>('persistentResourceId');
    this.project = registerOutput<String>('project');
    this.reservedIpRanges = registerOutput<List<String>>('reservedIpRanges');
    this.resourcePools =
        registerOutput<List<GoogleCloudAiplatformV1beta1ResourcePoolResponse>>(
            'resourcePools');
    this.resourceRuntime =
        registerOutput<GoogleCloudAiplatformV1beta1ResourceRuntimeResponse>(
            'resourceRuntime');
    this.resourceRuntimeSpec =
        registerOutput<GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse>(
            'resourceRuntimeSpec');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
