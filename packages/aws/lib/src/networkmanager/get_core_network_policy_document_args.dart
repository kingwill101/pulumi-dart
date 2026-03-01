// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_attachment_policy.dart';
import 'get_core_network_policy_document_attachment_routing_policy_rule.dart';
import 'get_core_network_policy_document_core_network_configuration.dart';
import 'get_core_network_policy_document_network_function_group.dart';
import 'get_core_network_policy_document_routing_policy.dart';
import 'get_core_network_policy_document_segment.dart';
import 'get_core_network_policy_document_segment_action.dart';

/// {@template pulumi_networkmanager_get_core_network_policy_document_get_core_network_policy_document_args_doc}
/// Arguments for getCoreNetworkPolicyDocument.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_core_network_policy_document_get_core_network_policy_document_args_doc}
class GetCoreNetworkPolicyDocumentArgs {
  /// In a core network, all attachments use the block argument `attachment_policies` section to map an attachment to a segment. Instead of manually associating a segment to each attachment, attachments use tags, and then the tags are used to associate the attachment to the specified segment. Detailed below.
  final pulumi.Input<List<GetCoreNetworkPolicyDocumentAttachmentPolicy>>? attachmentPolicies;
  /// Block argument that applies routing policies to attachments. Available in policy version `2025.11` and later. Detailed below.
  final pulumi.Input<List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>>? attachmentRoutingPolicyRules;
  /// The core network configuration section defines the Regions where a core network should operate. For AWS Regions that are defined in the policy, the core network creates a Core Network Edge where you can connect attachments. After it's created, each Core Network Edge is peered with every other defined Region and is configured with consistent segment and routing across all Regions. Regions cannot be removed until the associated attachments are deleted. Detailed below.
  final pulumi.Input<List<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>> coreNetworkConfigurations;
  /// Block argument that defines the service insertion actions you want to include. Detailed below.
  final pulumi.Input<List<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>>? networkFunctionGroups;
  /// Block argument that defines routing policies for controlling route propagation. Routing policies allow you to filter, modify, and control BGP routes advertised to and from your core network. Available in policy version `2025.11` and later. Detailed below.
  final pulumi.Input<List<GetCoreNetworkPolicyDocumentRoutingPolicy>>? routingPolicies;
  /// A block argument, `segment_actions` define how routing works between segments. By default, attachments can only communicate with other attachments in the same segment. Detailed below.
  final pulumi.Input<List<GetCoreNetworkPolicyDocumentSegmentAction>>? segmentActions;
  /// Block argument that defines the different segments in the network. Here you can provide descriptions, change defaults, and provide explicit Regional operational and route filters. The names defined for each segment are used in the `segment_actions` and `attachment_policies` section. Each segment is created, and operates, as a completely separated routing domain. By default, attachments can only communicate with other attachments in the same segment. Detailed below.
  final pulumi.Input<List<GetCoreNetworkPolicyDocumentSegment>> segments;
  /// Version of the core network policy. Valid values: `2021.12`, `2025.11`. Default: `2021.12`.
  final pulumi.Input<String>? version;

  /// Creates a new [GetCoreNetworkPolicyDocumentArgs].
  /// [attachmentPolicies] In a core network, all attachments use the block argument `attachment_policies` section to map an attachment to a segment. Instead of manually associating a segment to each attachment, attachments use tags, and then the tags are used to associate the attachment to the specified segment. Detailed below.
  /// [attachmentRoutingPolicyRules] Block argument that applies routing policies to attachments. Available in policy version `2025.11` and later. Detailed below.
  /// [coreNetworkConfigurations] The core network configuration section defines the Regions where a core network should operate. For AWS Regions that are defined in the policy, the core network creates a Core Network Edge where you can connect attachments. After it's created, each Core Network Edge is peered with every other defined Region and is configured with consistent segment and routing across all Regions. Regions cannot be removed until the associated attachments are deleted. Detailed below.
  /// [networkFunctionGroups] Block argument that defines the service insertion actions you want to include. Detailed below.
  /// [routingPolicies] Block argument that defines routing policies for controlling route propagation. Routing policies allow you to filter, modify, and control BGP routes advertised to and from your core network. Available in policy version `2025.11` and later. Detailed below.
  /// [segmentActions] A block argument, `segment_actions` define how routing works between segments. By default, attachments can only communicate with other attachments in the same segment. Detailed below.
  /// [segments] Block argument that defines the different segments in the network. Here you can provide descriptions, change defaults, and provide explicit Regional operational and route filters. The names defined for each segment are used in the `segment_actions` and `attachment_policies` section. Each segment is created, and operates, as a completely separated routing domain. By default, attachments can only communicate with other attachments in the same segment. Detailed below.
  /// [version] Version of the core network policy. Valid values: `2021.12`, `2025.11`. Default: `2021.12`.
  GetCoreNetworkPolicyDocumentArgs({
    List<GetCoreNetworkPolicyDocumentAttachmentPolicy>? attachmentPolicies,
    List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>? attachmentRoutingPolicyRules,
    required List<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration> coreNetworkConfigurations,
    List<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>? networkFunctionGroups,
    List<GetCoreNetworkPolicyDocumentRoutingPolicy>? routingPolicies,
    List<GetCoreNetworkPolicyDocumentSegmentAction>? segmentActions,
    required List<GetCoreNetworkPolicyDocumentSegment> segments,
    String? version,
  }) :
      attachmentPolicies = pulumi.Input.asOptionalInput<List<GetCoreNetworkPolicyDocumentAttachmentPolicy>>(attachmentPolicies),
      attachmentRoutingPolicyRules = pulumi.Input.asOptionalInput<List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>>(attachmentRoutingPolicyRules),
      coreNetworkConfigurations = pulumi.Input.asInput<List<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>>(coreNetworkConfigurations),
      networkFunctionGroups = pulumi.Input.asOptionalInput<List<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>>(networkFunctionGroups),
      routingPolicies = pulumi.Input.asOptionalInput<List<GetCoreNetworkPolicyDocumentRoutingPolicy>>(routingPolicies),
      segmentActions = pulumi.Input.asOptionalInput<List<GetCoreNetworkPolicyDocumentSegmentAction>>(segmentActions),
      segments = pulumi.Input.asInput<List<GetCoreNetworkPolicyDocumentSegment>>(segments),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentPolicies': ?pulumi.Input.mapOptionalInputValue<List<GetCoreNetworkPolicyDocumentAttachmentPolicy>, List<Map<String, dynamic>>>(attachmentPolicies, (value) => pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentAttachmentPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachmentRoutingPolicyRules': ?pulumi.Input.mapOptionalInputValue<List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>, List<Map<String, dynamic>>>(attachmentRoutingPolicyRules, (value) => pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'coreNetworkConfigurations': pulumi.Input.mapInputValue<List<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>, List<Map<String, dynamic>>>(coreNetworkConfigurations, (value) => pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkFunctionGroups': ?pulumi.Input.mapOptionalInputValue<List<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>, List<Map<String, dynamic>>>(networkFunctionGroups, (value) => pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentNetworkFunctionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routingPolicies': ?pulumi.Input.mapOptionalInputValue<List<GetCoreNetworkPolicyDocumentRoutingPolicy>, List<Map<String, dynamic>>>(routingPolicies, (value) => pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentRoutingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'segmentActions': ?pulumi.Input.mapOptionalInputValue<List<GetCoreNetworkPolicyDocumentSegmentAction>, List<Map<String, dynamic>>>(segmentActions, (value) => pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentSegmentAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'segments': pulumi.Input.mapInputValue<List<GetCoreNetworkPolicyDocumentSegment>, List<Map<String, dynamic>>>(segments, (value) => pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentSegment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory GetCoreNetworkPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentArgs(
      attachmentPolicies: map['attachmentPolicies'] == null ? null : pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentAttachmentPolicy>(map['attachmentPolicies'], (value) => GetCoreNetworkPolicyDocumentAttachmentPolicy.fromMap((value as Map).cast<String, dynamic>())),
      attachmentRoutingPolicyRules: map['attachmentRoutingPolicyRules'] == null ? null : pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>(map['attachmentRoutingPolicyRules'], (value) => GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      coreNetworkConfigurations: pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>(map['coreNetworkConfigurations'], (value) => GetCoreNetworkPolicyDocumentCoreNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      networkFunctionGroups: map['networkFunctionGroups'] == null ? null : pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>(map['networkFunctionGroups'], (value) => GetCoreNetworkPolicyDocumentNetworkFunctionGroup.fromMap((value as Map).cast<String, dynamic>())),
      routingPolicies: map['routingPolicies'] == null ? null : pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentRoutingPolicy>(map['routingPolicies'], (value) => GetCoreNetworkPolicyDocumentRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())),
      segmentActions: map['segmentActions'] == null ? null : pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentSegmentAction>(map['segmentActions'], (value) => GetCoreNetworkPolicyDocumentSegmentAction.fromMap((value as Map).cast<String, dynamic>())),
      segments: pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentSegment>(map['segments'], (value) => GetCoreNetworkPolicyDocumentSegment.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

