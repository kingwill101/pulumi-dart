// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_taint.dart';

/// {@template pulumi_eci_virtual_node_virtual_node_args_doc}
/// The set of arguments for VirtualNode.
/// {@endtemplate}
/// {@macro pulumi_eci_virtual_node_virtual_node_args_doc}
class VirtualNodeArgs {
  /// The Id of eip.
  final pulumi.Input<String>? eipInstanceId;
  /// Whether to enable public network. **NOTE:** If `eip_instance_id` is not configured and `enable_public_network` is true, the system will create an elastic public network IP.
  final pulumi.Input<bool>? enablePublicNetwork;
  /// The kube config for the k8s cluster. It needs to be connected after Base64 encoding.
  final pulumi.Input<String> kubeConfig;
  /// The resource group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// The security group ID.
  final pulumi.Input<String> securityGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The taint. See `taints` below.
  final pulumi.Input<List<VirtualNodeTaint>>? taints;
  /// The name of the virtual node. The length of the name is limited to `2` to `128` characters. It can contain uppercase and lowercase letters, Chinese characters, numbers, half-width colon (:), underscores (_), or hyphens (-), and must start with letters.
  final pulumi.Input<String>? virtualNodeName;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The Zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [VirtualNodeArgs].
  /// [eipInstanceId] The Id of eip.
  /// [enablePublicNetwork] Whether to enable public network. **NOTE:** If `eip_instance_id` is not configured and `enable_public_network` is true, the system will create an elastic public network IP.
  /// [kubeConfig] The kube config for the k8s cluster. It needs to be connected after Base64 encoding.
  /// [resourceGroupId] The resource group ID.
  /// [securityGroupId] The security group ID.
  /// [tags] A mapping of tags to assign to the resource.
  /// [taints] The taint. See `taints` below.
  /// [virtualNodeName] The name of the virtual node. The length of the name is limited to `2` to `128` characters. It can contain uppercase and lowercase letters, Chinese characters, numbers, half-width colon (:), underscores (_), or hyphens (-), and must start with letters.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The Zone.
  VirtualNodeArgs({
    pulumi.Output<String>? eipInstanceId,
    pulumi.Output<bool>? enablePublicNetwork,
    required pulumi.Output<String> kubeConfig,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> securityGroupId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<VirtualNodeTaint>>? taints,
    pulumi.Output<String>? virtualNodeName,
    required pulumi.Output<String> vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      eipInstanceId = pulumi.Input.asOptionalInput<String>(eipInstanceId),
      enablePublicNetwork = pulumi.Input.asOptionalInput<bool>(enablePublicNetwork),
      kubeConfig = pulumi.Input.asInput<String>(kubeConfig),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupId = pulumi.Input.asInput<String>(securityGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      taints = pulumi.Input.asOptionalInput<List<VirtualNodeTaint>>(taints),
      virtualNodeName = pulumi.Input.asOptionalInput<String>(virtualNodeName),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eipInstanceId': ?eipInstanceId,
      'enablePublicNetwork': ?enablePublicNetwork,
      'kubeConfig': kubeConfig,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': securityGroupId,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<VirtualNodeTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<VirtualNodeTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNodeName': ?virtualNodeName,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory VirtualNodeArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNodeArgs(
      eipInstanceId: map['eipInstanceId'] == null ? null : pulumi.Output.create<String>(map['eipInstanceId'] as String),
      enablePublicNetwork: map['enablePublicNetwork'] == null ? null : pulumi.Output.create<bool>(map['enablePublicNetwork'] as bool),
      kubeConfig: pulumi.Output.create<String>(map['kubeConfig'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityGroupId: pulumi.Output.create<String>(map['securityGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      taints: map['taints'] == null ? null : pulumi.Output.create<List<VirtualNodeTaint>>(pulumi.Input.decodeList<VirtualNodeTaint>(map['taints'], (value) => VirtualNodeTaint.fromMap((value as Map).cast<String, dynamic>()))),
      virtualNodeName: map['virtualNodeName'] == null ? null : pulumi.Output.create<String>(map['virtualNodeName'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

