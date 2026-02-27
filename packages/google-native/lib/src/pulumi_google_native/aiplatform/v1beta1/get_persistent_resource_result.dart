// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_resource_pool_response.dart';
import 'google_cloud_aiplatform_v1beta1_resource_runtime_response.dart';
import 'google_cloud_aiplatform_v1beta1_resource_runtime_spec_response.dart';
import 'google_rpc_status_response2.dart';

/// Result data returned by getPersistentResource.
class GetPersistentResourceResult {
  /// Time when the PersistentResource was created.
  final String createTime;

  /// Optional. The display name of the PersistentResource. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;

  /// Optional. Customer-managed encryption key spec for a PersistentResource. If set, this PersistentResource and all sub-resources of this PersistentResource will be secured by this key.
  final GoogleCloudAiplatformV1beta1EncryptionSpecResponse encryptionSpec;

  /// Only populated when persistent resource's state is `STOPPING` or `ERROR`.
  final GoogleRpcStatusResponse2 error;

  /// Optional. The labels with user-defined metadata to organize PersistentResource. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String> labels;

  /// Immutable. Resource name of a PersistentResource.
  final String name;

  /// Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to peered with Vertex AI to host the persistent resources. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the resources aren't peered with any network.
  final String network;

  /// Optional. A list of names for the reserved IP ranges under the VPC network that can be used for this persistent resource. If set, we will deploy the persistent resource within the provided IP ranges. Otherwise, the persistent resource is deployed to any IP ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  final List<String> reservedIpRanges;

  /// The spec of the pools of different resources.
  final List<GoogleCloudAiplatformV1beta1ResourcePoolResponse> resourcePools;

  /// Runtime information of the Persistent Resource.
  final GoogleCloudAiplatformV1beta1ResourceRuntimeResponse resourceRuntime;

  /// Optional. Persistent Resource runtime spec. For example, used for Ray cluster configuration.
  final GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse
      resourceRuntimeSpec;

  /// Time when the PersistentResource for the first time entered the `RUNNING` state.
  final String startTime;

  /// The detailed state of a Study.
  final String state;

  /// Time when the PersistentResource was most recently updated.
  final String updateTime;

  GetPersistentResourceResult({
    required this.createTime,
    required this.displayName,
    required this.encryptionSpec,
    required this.error,
    required this.labels,
    required this.name,
    required this.network,
    required this.reservedIpRanges,
    required this.resourcePools,
    required this.resourceRuntime,
    required this.resourceRuntimeSpec,
    required this.startTime,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['encryptionSpec'] = encryptionSpec.toMap();
    map['error'] = error.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['network'] = network;
    map['reservedIpRanges'] = reservedIpRanges;
    map['resourcePools'] = Input.encodeList<
        GoogleCloudAiplatformV1beta1ResourcePoolResponse,
        Map<String, dynamic>>(resourcePools, (value) => value.toMap());
    map['resourceRuntime'] = resourceRuntime.toMap();
    map['resourceRuntimeSpec'] = resourceRuntimeSpec.toMap();
    map['startTime'] = startTime;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetPersistentResourceResult.fromMap(Map<String, dynamic> map) {
    return GetPersistentResourceResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec:
          GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      error: GoogleRpcStatusResponse2.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      reservedIpRanges: (map['reservedIpRanges'] as List).cast<String>(),
      resourcePools:
          Input.decodeList<GoogleCloudAiplatformV1beta1ResourcePoolResponse>(
              map['resourcePools'],
              (value) =>
                  GoogleCloudAiplatformV1beta1ResourcePoolResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      resourceRuntime:
          GoogleCloudAiplatformV1beta1ResourceRuntimeResponse.fromMap(
              (map['resourceRuntime'] as Map).cast<String, dynamic>()),
      resourceRuntimeSpec:
          GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse.fromMap(
              (map['resourceRuntimeSpec'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
