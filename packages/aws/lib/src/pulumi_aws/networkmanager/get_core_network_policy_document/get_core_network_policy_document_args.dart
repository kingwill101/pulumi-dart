// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_core_network_policy_document_attachment_policy/get_core_network_policy_document_attachment_policy.dart';
import '../get_core_network_policy_document_attachment_routing_policy_rule/get_core_network_policy_document_attachment_routing_policy_rule.dart';
import '../get_core_network_policy_document_core_network_configuration/get_core_network_policy_document_core_network_configuration.dart';
import '../get_core_network_policy_document_network_function_group/get_core_network_policy_document_network_function_group.dart';
import '../get_core_network_policy_document_routing_policy/get_core_network_policy_document_routing_policy.dart';
import '../get_core_network_policy_document_segment/get_core_network_policy_document_segment.dart';
import '../get_core_network_policy_document_segment_action/get_core_network_policy_document_segment_action.dart';

/// Arguments for getCoreNetworkPolicyDocument.
class GetCoreNetworkPolicyDocumentArgs {
  /// In a core network, all attachments use the block argument `attachment_policies` section to map an attachment to a segment. Instead of manually associating a segment to each attachment, attachments use tags, and then the tags are used to associate the attachment to the specified segment. Detailed below.
  final Input<List<GetCoreNetworkPolicyDocumentAttachmentPolicy>>?
      attachmentPolicies;

  /// Block argument that applies routing policies to attachments. Available in policy version `2025.11` and later. Detailed below.
  final Input<List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>>?
      attachmentRoutingPolicyRules;

  /// The core network configuration section defines the Regions where a core network should operate. For AWS Regions that are defined in the policy, the core network creates a Core Network Edge where you can connect attachments. After it's created, each Core Network Edge is peered with every other defined Region and is configured with consistent segment and routing across all Regions. Regions cannot be removed until the associated attachments are deleted. Detailed below.
  final Input<List<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>>
      coreNetworkConfigurations;

  /// Block argument that defines the service insertion actions you want to include. Detailed below.
  final Input<List<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>>?
      networkFunctionGroups;

  /// Block argument that defines routing policies for controlling route propagation. Routing policies allow you to filter, modify, and control BGP routes advertised to and from your core network. Available in policy version `2025.11` and later. Detailed below.
  final Input<List<GetCoreNetworkPolicyDocumentRoutingPolicy>>? routingPolicies;

  /// A block argument, `segment_actions` define how routing works between segments. By default, attachments can only communicate with other attachments in the same segment. Detailed below.
  final Input<List<GetCoreNetworkPolicyDocumentSegmentAction>>? segmentActions;

  /// Block argument that defines the different segments in the network. Here you can provide descriptions, change defaults, and provide explicit Regional operational and route filters. The names defined for each segment are used in the `segment_actions` and `attachment_policies` section. Each segment is created, and operates, as a completely separated routing domain. By default, attachments can only communicate with other attachments in the same segment. Detailed below.
  final Input<List<GetCoreNetworkPolicyDocumentSegment>> segments;

  /// Version of the core network policy. Valid values: `2021.12`, `2025.11`. Default: `2021.12`.
  final Input<String>? version;

  GetCoreNetworkPolicyDocumentArgs({
    this.attachmentPolicies,
    this.attachmentRoutingPolicyRules,
    required this.coreNetworkConfigurations,
    this.networkFunctionGroups,
    this.routingPolicies,
    this.segmentActions,
    required this.segments,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentPoliciesValue = attachmentPolicies;
    if (attachmentPoliciesValue != null) {
      map['attachmentPolicies'] = Input.mapOptionalInputValue<
              List<GetCoreNetworkPolicyDocumentAttachmentPolicy>,
              List<Map<String, dynamic>>>(
          attachmentPoliciesValue,
          (value) => Input.encodeList<
              GetCoreNetworkPolicyDocumentAttachmentPolicy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final attachmentRoutingPolicyRulesValue = attachmentRoutingPolicyRules;
    if (attachmentRoutingPolicyRulesValue != null) {
      map['attachmentRoutingPolicyRules'] = Input.mapOptionalInputValue<
              List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>,
              List<Map<String, dynamic>>>(
          attachmentRoutingPolicyRulesValue,
          (value) => Input.encodeList<
              GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['coreNetworkConfigurations'] = Input.mapInputValue<
            List<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>,
            List<Map<String, dynamic>>>(
        coreNetworkConfigurations,
        (value) => Input.encodeList<
            GetCoreNetworkPolicyDocumentCoreNetworkConfiguration,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final networkFunctionGroupsValue = networkFunctionGroups;
    if (networkFunctionGroupsValue != null) {
      map['networkFunctionGroups'] = Input.mapOptionalInputValue<
              List<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>,
              List<Map<String, dynamic>>>(
          networkFunctionGroupsValue,
          (value) => Input.encodeList<
              GetCoreNetworkPolicyDocumentNetworkFunctionGroup,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final routingPoliciesValue = routingPolicies;
    if (routingPoliciesValue != null) {
      map['routingPolicies'] = Input.mapOptionalInputValue<
              List<GetCoreNetworkPolicyDocumentRoutingPolicy>,
              List<Map<String, dynamic>>>(
          routingPoliciesValue,
          (value) => Input.encodeList<GetCoreNetworkPolicyDocumentRoutingPolicy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final segmentActionsValue = segmentActions;
    if (segmentActionsValue != null) {
      map['segmentActions'] = Input.mapOptionalInputValue<
              List<GetCoreNetworkPolicyDocumentSegmentAction>,
              List<Map<String, dynamic>>>(
          segmentActionsValue,
          (value) => Input.encodeList<GetCoreNetworkPolicyDocumentSegmentAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['segments'] = Input.mapInputValue<
            List<GetCoreNetworkPolicyDocumentSegment>,
            List<Map<String, dynamic>>>(
        segments,
        (value) => Input.encodeList<GetCoreNetworkPolicyDocumentSegment,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetCoreNetworkPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentArgs(
      attachmentPolicies: Input.asOptionalInput<
              List<GetCoreNetworkPolicyDocumentAttachmentPolicy>>(
          map['attachmentPolicies']),
      attachmentRoutingPolicyRules: Input.asOptionalInput<
              List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>>(
          map['attachmentRoutingPolicyRules']),
      coreNetworkConfigurations: Input.asInput<
              List<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>>(
          map['coreNetworkConfigurations']),
      networkFunctionGroups: Input.asOptionalInput<
              List<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>>(
          map['networkFunctionGroups']),
      routingPolicies: Input.asOptionalInput<
              List<GetCoreNetworkPolicyDocumentRoutingPolicy>>(
          map['routingPolicies']),
      segmentActions: Input.asOptionalInput<
              List<GetCoreNetworkPolicyDocumentSegmentAction>>(
          map['segmentActions']),
      segments: Input.asInput<List<GetCoreNetworkPolicyDocumentSegment>>(
          map['segments']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
