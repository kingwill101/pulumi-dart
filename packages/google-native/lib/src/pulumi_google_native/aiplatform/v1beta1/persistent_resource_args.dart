// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_resource_pool.dart';
import 'google_cloud_aiplatform_v1beta1_resource_runtime_spec.dart';

/// The set of arguments for PersistentResource.
class PersistentResourceArgs {
  /// Optional. The display name of the PersistentResource. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String>? displayName;

  /// Optional. Customer-managed encryption key spec for a PersistentResource. If set, this PersistentResource and all sub-resources of this PersistentResource will be secured by this key.
  final Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;

  /// Optional. The labels with user-defined metadata to organize PersistentResource. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Immutable. Resource name of a PersistentResource.
  final Input<String>? name;

  /// Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to peered with Vertex AI to host the persistent resources. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the resources aren't peered with any network.
  final Input<String>? network;

  /// Required. The ID to use for the PersistentResource, which become the final component of the PersistentResource's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  final Input<String> persistentResourceId;
  final Input<String>? project;

  /// Optional. A list of names for the reserved IP ranges under the VPC network that can be used for this persistent resource. If set, we will deploy the persistent resource within the provided IP ranges. Otherwise, the persistent resource is deployed to any IP ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  final Input<List<String>>? reservedIpRanges;

  /// The spec of the pools of different resources.
  final Input<List<GoogleCloudAiplatformV1beta1ResourcePool>> resourcePools;

  /// Optional. Persistent Resource runtime spec. For example, used for Ray cluster configuration.
  final Input<GoogleCloudAiplatformV1beta1ResourceRuntimeSpec>?
      resourceRuntimeSpec;

  PersistentResourceArgs({
    this.displayName,
    this.encryptionSpec,
    this.labels,
    this.location,
    this.name,
    this.network,
    required this.persistentResourceId,
    this.project,
    this.reservedIpRanges,
    required this.resourcePools,
    this.resourceRuntimeSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    map['persistentResourceId'] = persistentResourceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservedIpRangesValue = reservedIpRanges;
    if (reservedIpRangesValue != null) {
      map['reservedIpRanges'] = reservedIpRangesValue;
    }
    map['resourcePools'] = Input.mapInputValue<
            List<GoogleCloudAiplatformV1beta1ResourcePool>,
            List<Map<String, dynamic>>>(
        resourcePools,
        (value) => Input.encodeList<GoogleCloudAiplatformV1beta1ResourcePool,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final resourceRuntimeSpecValue = resourceRuntimeSpec;
    if (resourceRuntimeSpecValue != null) {
      map['resourceRuntimeSpec'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1ResourceRuntimeSpec,
              Map<String, dynamic>>(
          resourceRuntimeSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory PersistentResourceArgs.fromMap(Map<String, dynamic> map) {
    return PersistentResourceArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1beta1EncryptionSpec>(
              map['encryptionSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      persistentResourceId: Input.asInput<String>(map['persistentResourceId']),
      project: Input.asOptionalInput<String>(map['project']),
      reservedIpRanges:
          Input.asOptionalInput<List<String>>(map['reservedIpRanges']),
      resourcePools:
          Input.asInput<List<GoogleCloudAiplatformV1beta1ResourcePool>>(
              map['resourcePools']),
      resourceRuntimeSpec: Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1ResourceRuntimeSpec>(
          map['resourceRuntimeSpec']),
    );
  }
}
