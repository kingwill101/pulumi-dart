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
    this.eipInstanceId,
    this.enablePublicNetwork,
    required this.kubeConfig,
    this.resourceGroupId,
    required this.securityGroupId,
    this.tags,
    this.taints,
    this.virtualNodeName,
    required this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eipInstanceId': ?eipInstanceId,
      'enablePublicNetwork': ?enablePublicNetwork,
      'kubeConfig': kubeConfig,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': securityGroupId,
      'tags': ?tags,
      'taints':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualNodeTaint>,
            List<Map<String, dynamic>>
          >(
            taints,
            (value) =>
                pulumi.Input.encodeList<VirtualNodeTaint, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'virtualNodeName': ?virtualNodeName,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory VirtualNodeArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNodeArgs(
      eipInstanceId: (() {
        final guardedValue = map['eipInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enablePublicNetwork: (() {
        final guardedValue = map['enablePublicNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kubeConfig: pulumi.Input.fromValue(map['kubeConfig'] as String),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      taints: (() {
        final guardedValue = map['taints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualNodeTaint>(
            guardedValue,
            (value) => VirtualNodeTaint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      virtualNodeName: (() {
        final guardedValue = map['virtualNodeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
