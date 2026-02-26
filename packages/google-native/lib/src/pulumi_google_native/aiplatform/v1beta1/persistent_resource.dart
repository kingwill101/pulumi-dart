import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_resource_pool_response.dart';
import 'google_cloud_aiplatform_v1beta1_resource_runtime_response.dart';
import 'google_cloud_aiplatform_v1beta1_resource_runtime_spec_response.dart';
import 'google_rpc_status_response2.dart';
import 'persistent_resource_args.dart';

/// Creates a PersistentResource.
class PersistentResource extends CustomResource {
  /// Time when the PersistentResource was created.
  late final Output<String> createTime;

  /// Optional. The display name of the PersistentResource. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Optional. Customer-managed encryption key spec for a PersistentResource. If set, this PersistentResource and all sub-resources of this PersistentResource will be secured by this key.
  late final Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
      encryptionSpec;

  /// Only populated when persistent resource's state is `STOPPING` or `ERROR`.
  late final Output<GoogleRpcStatusResponse2> error;

  /// Optional. The labels with user-defined metadata to organize PersistentResource. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Immutable. Resource name of a PersistentResource.
  late final Output<String> name;

  /// Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to peered with Vertex AI to host the persistent resources. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the resources aren't peered with any network.
  late final Output<String> network;

  /// Required. The ID to use for the PersistentResource, which become the final component of the PersistentResource's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  late final Output<String> persistentResourceId;
  late final Output<String> project;

  /// Optional. A list of names for the reserved IP ranges under the VPC network that can be used for this persistent resource. If set, we will deploy the persistent resource within the provided IP ranges. Otherwise, the persistent resource is deployed to any IP ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  late final Output<List<String>> reservedIpRanges;

  /// The spec of the pools of different resources.
  late final Output<List<GoogleCloudAiplatformV1beta1ResourcePoolResponse>>
      resourcePools;

  /// Runtime information of the Persistent Resource.
  late final Output<GoogleCloudAiplatformV1beta1ResourceRuntimeResponse>
      resourceRuntime;

  /// Optional. Persistent Resource runtime spec. For example, used for Ray cluster configuration.
  late final Output<GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse>
      resourceRuntimeSpec;

  /// Time when the PersistentResource for the first time entered the `RUNNING` state.
  late final Output<String> startTime;

  /// The detailed state of a Study.
  late final Output<String> state;

  /// Time when the PersistentResource was most recently updated.
  late final Output<String> updateTime;

  PersistentResource(
    String name, {
    PersistentResourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:PersistentResource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.encryptionSpec = Output.createUnknown<
        GoogleCloudAiplatformV1beta1EncryptionSpecResponse>();
    this.error = Output.createUnknown<GoogleRpcStatusResponse2>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.persistentResourceId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reservedIpRanges = Output.createUnknown<List<String>>();
    this.resourcePools = Output.createUnknown<
        List<GoogleCloudAiplatformV1beta1ResourcePoolResponse>>();
    this.resourceRuntime = Output.createUnknown<
        GoogleCloudAiplatformV1beta1ResourceRuntimeResponse>();
    this.resourceRuntimeSpec = Output.createUnknown<
        GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
