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
  final List<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>? attachmentRoutingPolicyRules;
  final List<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>? coreNetworkConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Standard JSON policy document rendered based on the arguments above.
  final String? json;
  final List<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>? networkFunctionGroups;
  final List<GetCoreNetworkPolicyDocumentRoutingPolicy>? routingPolicies;
  final List<GetCoreNetworkPolicyDocumentSegmentAction>? segmentActions;
  final List<GetCoreNetworkPolicyDocumentSegment>? segments;
  final String? version;

  /// Creates a new [GetCoreNetworkPolicyDocumentResult].
  /// [attachmentPolicies] Optional.
  /// [attachmentRoutingPolicyRules] Optional.
  /// [coreNetworkConfigurations] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] Standard JSON policy document rendered based on the arguments above.
  /// [networkFunctionGroups] Optional.
  /// [routingPolicies] Optional.
  /// [segmentActions] Optional.
  /// [segments] Optional.
  /// [version] Optional.
  const GetCoreNetworkPolicyDocumentResult({
    this.attachmentPolicies,
    this.attachmentRoutingPolicyRules,
    this.coreNetworkConfigurations,
    this.id,
    this.json,
    this.networkFunctionGroups,
    this.routingPolicies,
    this.segmentActions,
    this.segments,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentPolicies': ?(() { final guardedValue = attachmentPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentAttachmentPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'attachmentRoutingPolicyRules': ?(() { final guardedValue = attachmentRoutingPolicyRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'coreNetworkConfigurations': ?(() { final guardedValue = coreNetworkConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'json': ?json,
      'networkFunctionGroups': ?(() { final guardedValue = networkFunctionGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentNetworkFunctionGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'routingPolicies': ?(() { final guardedValue = routingPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentRoutingPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'segmentActions': ?(() { final guardedValue = segmentActions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentSegmentAction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'segments': ?(() { final guardedValue = segments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentSegment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'version': ?version,
    };
  }

  factory GetCoreNetworkPolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentResult(
      attachmentPolicies: (() { final guardedValue = map['attachmentPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentAttachmentPolicy>(guardedValue, (value) => GetCoreNetworkPolicyDocumentAttachmentPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      attachmentRoutingPolicyRules: (() { final guardedValue = map['attachmentRoutingPolicyRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule>(guardedValue, (value) => GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      coreNetworkConfigurations: (() { final guardedValue = map['coreNetworkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentCoreNetworkConfiguration>(guardedValue, (value) => GetCoreNetworkPolicyDocumentCoreNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkFunctionGroups: (() { final guardedValue = map['networkFunctionGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentNetworkFunctionGroup>(guardedValue, (value) => GetCoreNetworkPolicyDocumentNetworkFunctionGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      routingPolicies: (() { final guardedValue = map['routingPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentRoutingPolicy>(guardedValue, (value) => GetCoreNetworkPolicyDocumentRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      segmentActions: (() { final guardedValue = map['segmentActions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentSegmentAction>(guardedValue, (value) => GetCoreNetworkPolicyDocumentSegmentAction.fromMap((value as Map).cast<String, dynamic>())); })(),
      segments: (() { final guardedValue = map['segments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentSegment>(guardedValue, (value) => GetCoreNetworkPolicyDocumentSegment.fromMap((value as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
