// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_attachment_policy.dart';
import 'get_core_network_policy_document_attachment_routing_policy_rule.dart';
import 'get_core_network_policy_document_core_network_configuration.dart';
import 'get_core_network_policy_document_network_function_group.dart';
import 'get_core_network_policy_document_routing_policy.dart';
import 'get_core_network_policy_document_segment.dart';
import 'get_core_network_policy_document_segment_action.dart';

/// Result data returned by getCoreNetworkPolicyDocument.
class GetCoreNetworkPolicyDocumentResult {
  final List<GetCoreNetworkPolicyDocumentAttachmentPolicy>? attachmentPolicies;
  final List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>?
      attachmentRoutingPolicyRules;
  final List<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>
      coreNetworkConfigurations;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Standard JSON policy document rendered based on the arguments above.
  final String json;
  final List<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>?
      networkFunctionGroups;
  final List<GetCoreNetworkPolicyDocumentRoutingPolicy>? routingPolicies;
  final List<GetCoreNetworkPolicyDocumentSegmentAction>? segmentActions;
  final List<GetCoreNetworkPolicyDocumentSegment> segments;
  final String? version;

  /// Creates a new [GetCoreNetworkPolicyDocumentResult].
  /// [attachmentPolicies] Optional.
  /// [attachmentRoutingPolicyRules] Optional.
  /// [coreNetworkConfigurations] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] Standard JSON policy document rendered based on the arguments above.
  /// [networkFunctionGroups] Optional.
  /// [routingPolicies] Optional.
  /// [segmentActions] Optional.
  /// [segments] Required.
  /// [version] Optional.
  GetCoreNetworkPolicyDocumentResult({
    this.attachmentPolicies,
    this.attachmentRoutingPolicyRules,
    required this.coreNetworkConfigurations,
    required this.id,
    required this.json,
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
      map['attachmentPolicies'] = pulumi.Input.encodeList<
              GetCoreNetworkPolicyDocumentAttachmentPolicy,
              Map<String, dynamic>>(
          attachmentPoliciesValue, (value) => value.toMap());
    }
    final attachmentRoutingPolicyRulesValue = attachmentRoutingPolicyRules;
    if (attachmentRoutingPolicyRulesValue != null) {
      map['attachmentRoutingPolicyRules'] = pulumi.Input.encodeList<
              GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule,
              Map<String, dynamic>>(
          attachmentRoutingPolicyRulesValue, (value) => value.toMap());
    }
    map['coreNetworkConfigurations'] = pulumi.Input.encodeList<
            GetCoreNetworkPolicyDocumentCoreNetworkConfiguration,
            Map<String, dynamic>>(
        coreNetworkConfigurations, (value) => value.toMap());
    map['id'] = id;
    map['json'] = json;
    final networkFunctionGroupsValue = networkFunctionGroups;
    if (networkFunctionGroupsValue != null) {
      map['networkFunctionGroups'] = pulumi.Input.encodeList<
              GetCoreNetworkPolicyDocumentNetworkFunctionGroup,
              Map<String, dynamic>>(
          networkFunctionGroupsValue, (value) => value.toMap());
    }
    final routingPoliciesValue = routingPolicies;
    if (routingPoliciesValue != null) {
      map['routingPolicies'] = pulumi.Input.encodeList<
          GetCoreNetworkPolicyDocumentRoutingPolicy,
          Map<String, dynamic>>(routingPoliciesValue, (value) => value.toMap());
    }
    final segmentActionsValue = segmentActions;
    if (segmentActionsValue != null) {
      map['segmentActions'] = pulumi.Input.encodeList<
          GetCoreNetworkPolicyDocumentSegmentAction,
          Map<String, dynamic>>(segmentActionsValue, (value) => value.toMap());
    }
    map['segments'] = pulumi.Input.encodeList<
        GetCoreNetworkPolicyDocumentSegment,
        Map<String, dynamic>>(segments, (value) => value.toMap());
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetCoreNetworkPolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentResult(
      attachmentPolicies: map['attachmentPolicies'] == null
          ? null
          : pulumi.Input.decodeList<
                  GetCoreNetworkPolicyDocumentAttachmentPolicy>(
              map['attachmentPolicies'],
              (value) => GetCoreNetworkPolicyDocumentAttachmentPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      attachmentRoutingPolicyRules: map['attachmentRoutingPolicyRules'] == null
          ? null
          : pulumi.Input.decodeList<
                  GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>(
              map['attachmentRoutingPolicyRules'],
              (value) => GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule
                  .fromMap((value as Map).cast<String, dynamic>())),
      coreNetworkConfigurations: pulumi.Input.decodeList<
              GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>(
          map['coreNetworkConfigurations'],
          (value) =>
              GetCoreNetworkPolicyDocumentCoreNetworkConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      json: map['json'] as String,
      networkFunctionGroups: map['networkFunctionGroups'] == null
          ? null
          : pulumi.Input.decodeList<
                  GetCoreNetworkPolicyDocumentNetworkFunctionGroup>(
              map['networkFunctionGroups'],
              (value) =>
                  GetCoreNetworkPolicyDocumentNetworkFunctionGroup.fromMap(
                      (value as Map).cast<String, dynamic>())),
      routingPolicies: map['routingPolicies'] == null
          ? null
          : pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentRoutingPolicy>(
              map['routingPolicies'],
              (value) => GetCoreNetworkPolicyDocumentRoutingPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      segmentActions: map['segmentActions'] == null
          ? null
          : pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentSegmentAction>(
              map['segmentActions'],
              (value) => GetCoreNetworkPolicyDocumentSegmentAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      segments: pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentSegment>(
          map['segments'],
          (value) => GetCoreNetworkPolicyDocumentSegment.fromMap(
              (value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
