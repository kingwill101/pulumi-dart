// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_label_response.dart';
import 'network_attachment_response.dart';

class KubernetesClusterNodeResponse {
  /// The resource ID of the agent pool that this node belongs to. This value is not represented on control plane nodes.
  final String agentPoolId;
  /// The availability zone this node is running within.
  final String availabilityZone;
  /// The resource ID of the bare metal machine that hosts this node.
  final String bareMetalMachineId;
  /// The number of CPU cores configured for this node, derived from the VM SKU specified.
  final double cpuCores;
  /// The detailed state of this node.
  final String detailedStatus;
  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;
  /// The size of the disk configured for this node. Allocations are measured in gibibytes.
  final double diskSizeGB;
  /// The machine image used to deploy this node.
  final String image;
  /// The currently running version of Kubernetes and bundled features running on this node.
  final String kubernetesVersion;
  /// The list of labels on this node that have been assigned to the agent pool containing this node.
  final List<KubernetesLabelResponse> labels;
  /// The amount of memory configured for this node, derived from the vm SKU specified. Allocations are measured in gibibytes.
  final double memorySizeGB;
  /// The mode of the agent pool containing this node. Not applicable for control plane nodes.
  final String mode;
  /// The name of this node, as realized in the Kubernetes cluster.
  final String name;
  /// The NetworkAttachments made to this node.
  final List<NetworkAttachmentResponse> networkAttachments;
  /// The power state of this node.
  final String powerState;
  /// The role of this node in the cluster.
  final String role;
  /// The list of taints that have been assigned to the agent pool containing this node.
  final List<KubernetesLabelResponse> taints;
  /// The VM SKU name that was used to create this cluster node.
  final String vmSkuName;

  /// Creates a new [KubernetesClusterNodeResponse].
  /// [agentPoolId] The resource ID of the agent pool that this node belongs to. This value is not represented on control plane nodes.
  /// [availabilityZone] The availability zone this node is running within.
  /// [bareMetalMachineId] The resource ID of the bare metal machine that hosts this node.
  /// [cpuCores] The number of CPU cores configured for this node, derived from the VM SKU specified.
  /// [detailedStatus] The detailed state of this node.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [diskSizeGB] The size of the disk configured for this node. Allocations are measured in gibibytes.
  /// [image] The machine image used to deploy this node.
  /// [kubernetesVersion] The currently running version of Kubernetes and bundled features running on this node.
  /// [labels] The list of labels on this node that have been assigned to the agent pool containing this node.
  /// [memorySizeGB] The amount of memory configured for this node, derived from the vm SKU specified. Allocations are measured in gibibytes.
  /// [mode] The mode of the agent pool containing this node. Not applicable for control plane nodes.
  /// [name] The name of this node, as realized in the Kubernetes cluster.
  /// [networkAttachments] The NetworkAttachments made to this node.
  /// [powerState] The power state of this node.
  /// [role] The role of this node in the cluster.
  /// [taints] The list of taints that have been assigned to the agent pool containing this node.
  /// [vmSkuName] The VM SKU name that was used to create this cluster node.
  KubernetesClusterNodeResponse({
    required this.agentPoolId,
    required this.availabilityZone,
    required this.bareMetalMachineId,
    required this.cpuCores,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.diskSizeGB,
    required this.image,
    required this.kubernetesVersion,
    required this.labels,
    required this.memorySizeGB,
    required this.mode,
    required this.name,
    required this.networkAttachments,
    required this.powerState,
    required this.role,
    required this.taints,
    required this.vmSkuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolId': agentPoolId,
      'availabilityZone': availabilityZone,
      'bareMetalMachineId': bareMetalMachineId,
      'cpuCores': cpuCores,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'diskSizeGB': diskSizeGB,
      'image': image,
      'kubernetesVersion': kubernetesVersion,
      'labels': pulumi.Input.encodeList<KubernetesLabelResponse, Map<String, dynamic>>(labels, (value) => value.toMap()),
      'memorySizeGB': memorySizeGB,
      'mode': mode,
      'name': name,
      'networkAttachments': pulumi.Input.encodeList<NetworkAttachmentResponse, Map<String, dynamic>>(networkAttachments, (value) => value.toMap()),
      'powerState': powerState,
      'role': role,
      'taints': pulumi.Input.encodeList<KubernetesLabelResponse, Map<String, dynamic>>(taints, (value) => value.toMap()),
      'vmSkuName': vmSkuName,
    };
  }

  factory KubernetesClusterNodeResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodeResponse(
      agentPoolId: map['agentPoolId'] as String,
      availabilityZone: map['availabilityZone'] as String,
      bareMetalMachineId: map['bareMetalMachineId'] as String,
      cpuCores: map['cpuCores'] as double,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      diskSizeGB: map['diskSizeGB'] as double,
      image: map['image'] as String,
      kubernetesVersion: map['kubernetesVersion'] as String,
      labels: pulumi.Input.decodeList<KubernetesLabelResponse>(map['labels'], (value) => KubernetesLabelResponse.fromMap((value as Map).cast<String, dynamic>())),
      memorySizeGB: map['memorySizeGB'] as double,
      mode: map['mode'] as String,
      name: map['name'] as String,
      networkAttachments: pulumi.Input.decodeList<NetworkAttachmentResponse>(map['networkAttachments'], (value) => NetworkAttachmentResponse.fromMap((value as Map).cast<String, dynamic>())),
      powerState: map['powerState'] as String,
      role: map['role'] as String,
      taints: pulumi.Input.decodeList<KubernetesLabelResponse>(map['taints'], (value) => KubernetesLabelResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmSkuName: map['vmSkuName'] as String,
    );
  }
}

