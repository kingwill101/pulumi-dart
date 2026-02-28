// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_resource_pool.dart';
import 'google_cloud_aiplatform_v1beta1_resource_runtime_spec.dart';

/// {@template pulumi_aiplatform_v1beta1_persistent_resource_args_doc}
/// The set of arguments for PersistentResource.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_persistent_resource_args_doc}
class PersistentResourceArgs {
  /// Optional. The display name of the PersistentResource. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String>? displayName;

  /// Optional. Customer-managed encryption key spec for a PersistentResource. If set, this PersistentResource and all sub-resources of this PersistentResource will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>?
      encryptionSpec;

  /// Optional. The labels with user-defined metadata to organize PersistentResource. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. Resource name of a PersistentResource.
  final pulumi.Input<String>? name;

  /// Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to peered with Vertex AI to host the persistent resources. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the resources aren't peered with any network.
  final pulumi.Input<String>? network;

  /// Required. The ID to use for the PersistentResource, which become the final component of the PersistentResource's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  final pulumi.Input<String> persistentResourceId;
  final pulumi.Input<String>? project;

  /// Optional. A list of names for the reserved IP ranges under the VPC network that can be used for this persistent resource. If set, we will deploy the persistent resource within the provided IP ranges. Otherwise, the persistent resource is deployed to any IP ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  final pulumi.Input<List<String>>? reservedIpRanges;

  /// The spec of the pools of different resources.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1ResourcePool>>
      resourcePools;

  /// Optional. Persistent Resource runtime spec. For example, used for Ray cluster configuration.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ResourceRuntimeSpec>?
      resourceRuntimeSpec;

  /// Creates a new [PersistentResourceArgs].
  /// [displayName] Optional. The display name of the PersistentResource. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Optional. Customer-managed encryption key spec for a PersistentResource. If set, this PersistentResource and all sub-resources of this PersistentResource will be secured by this key.
  /// [labels] Optional. The labels with user-defined metadata to organize PersistentResource. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [name] Immutable. Resource name of a PersistentResource.
  /// [network] Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to peered with Vertex AI to host the persistent resources. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the resources aren't peered with any network.
  /// [persistentResourceId] Required. The ID to use for the PersistentResource, which become the final component of the PersistentResource's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  /// [project] Optional.
  /// [reservedIpRanges] Optional. A list of names for the reserved IP ranges under the VPC network that can be used for this persistent resource. If set, we will deploy the persistent resource within the provided IP ranges. Otherwise, the persistent resource is deployed to any IP ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  /// [resourcePools] The spec of the pools of different resources.
  /// [resourceRuntimeSpec] Optional. Persistent Resource runtime spec. For example, used for Ray cluster configuration.
  PersistentResourceArgs({
    String? displayName,
    GoogleCloudAiplatformV1beta1EncryptionSpec? encryptionSpec,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? network,
    required String persistentResourceId,
    String? project,
    List<String>? reservedIpRanges,
    required List<GoogleCloudAiplatformV1beta1ResourcePool> resourcePools,
    GoogleCloudAiplatformV1beta1ResourceRuntimeSpec? resourceRuntimeSpec,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        encryptionSpec = pulumi.Input.asOptionalInput<
            GoogleCloudAiplatformV1beta1EncryptionSpec>(encryptionSpec),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        network = pulumi.Input.asOptionalInput<String>(network),
        persistentResourceId =
            pulumi.Input.asInput<String>(persistentResourceId),
        project = pulumi.Input.asOptionalInput<String>(project),
        reservedIpRanges =
            pulumi.Input.asOptionalInput<List<String>>(reservedIpRanges),
        resourcePools = pulumi.Input.asInput<
            List<GoogleCloudAiplatformV1beta1ResourcePool>>(resourcePools),
        resourceRuntimeSpec = pulumi.Input.asOptionalInput<
                GoogleCloudAiplatformV1beta1ResourceRuntimeSpec>(
            resourceRuntimeSpec);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
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
    map['resourcePools'] = pulumi.Input.mapInputValue<
            List<GoogleCloudAiplatformV1beta1ResourcePool>,
            List<Map<String, dynamic>>>(
        resourcePools,
        (value) => pulumi.Input.encodeList<
            GoogleCloudAiplatformV1beta1ResourcePool,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final resourceRuntimeSpecValue = resourceRuntimeSpec;
    if (resourceRuntimeSpecValue != null) {
      map['resourceRuntimeSpec'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1ResourceRuntimeSpec,
              Map<String, dynamic>>(
          resourceRuntimeSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory PersistentResourceArgs.fromMap(Map<String, dynamic> map) {
    return PersistentResourceArgs(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      persistentResourceId: map['persistentResourceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reservedIpRanges: map['reservedIpRanges'] == null
          ? null
          : (map['reservedIpRanges'] as List).cast<String>(),
      resourcePools:
          pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1ResourcePool>(
              map['resourcePools'],
              (value) => GoogleCloudAiplatformV1beta1ResourcePool.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceRuntimeSpec: map['resourceRuntimeSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ResourceRuntimeSpec.fromMap(
              (map['resourceRuntimeSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
