// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_segment_action_edge_location_association.dart';
import 'get_core_network_policy_document_segment_action_via.dart';
import 'get_core_network_policy_document_segment_action_when_sent_to.dart';

class GetCoreNetworkPolicyDocumentSegmentAction {
  /// Action to take for the chosen segment. Valid values: `create-route`, `share`, `send-via`, `send-to`, and `associate-routing-policy` (available in policy version `2025.11` and later).
  final pulumi.Input<String> action;
  /// A user-defined string describing the segment action.
  final pulumi.Input<String>? description;
  /// List of strings containing CIDRs. You can define the IPv4 and IPv6 CIDR notation for each AWS Region. For example, `10.1.0.0/16` or `2001:db8::/56`. This is an array of CIDR notation strings.
  final pulumi.Input<List<String>>? destinationCidrBlocks;
  /// A list of strings. Valid values include `["blackhole"]` or a list of attachment ids.
  final pulumi.Input<List<String>>? destinations;
  /// Associates routing policies with specific edge location pairs. Available in policy version `2025.11` and later. Detailed below.
  final pulumi.Input<GetCoreNetworkPolicyDocumentSegmentActionEdgeLocationAssociation>? edgeLocationAssociation;
  /// String. When `action` is `share`, a `mode` value of `attachment-route` places the attachment and return routes in each of the `share_with` segments. When `action` is `send-via`, indicates the mode used for packets. Valid values: `attachment-route`, `single-hop`, `dual-hop`.
  final pulumi.Input<String>? mode;
  /// A list of routing policy names to apply to segment sharing. The routing policies control how routes are propagated between the shared segments. Only applicable when `action` is `share`. Available in policy version `2025.11` and later.
  final pulumi.Input<List<String>>? routingPolicyNames;
  /// Name of the segment.
  final pulumi.Input<String> segment;
  /// A set subtraction of segments to not share with.
  final pulumi.Input<List<String>>? shareWithExcepts;
  /// A list of strings to share with. Must be a substring is all segments. Valid values include: `["*"]` or `["<segment-names>"]`.
  final pulumi.Input<List<String>>? shareWiths;
  /// The network function groups and any edge overrides associated with the action.
  final pulumi.Input<GetCoreNetworkPolicyDocumentSegmentActionVia>? via;
  /// The destination segments for the `send-via` or `send-to` `action`.
  final pulumi.Input<GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo>? whenSentTo;

  /// Creates a new [GetCoreNetworkPolicyDocumentSegmentAction].
  /// [action] Action to take for the chosen segment. Valid values: `create-route`, `share`, `send-via`, `send-to`, and `associate-routing-policy` (available in policy version `2025.11` and later).
  /// [description] A user-defined string describing the segment action.
  /// [destinationCidrBlocks] List of strings containing CIDRs. You can define the IPv4 and IPv6 CIDR notation for each AWS Region. For example, `10.1.0.0/16` or `2001:db8::/56`. This is an array of CIDR notation strings.
  /// [destinations] A list of strings. Valid values include `["blackhole"]` or a list of attachment ids.
  /// [edgeLocationAssociation] Associates routing policies with specific edge location pairs. Available in policy version `2025.11` and later. Detailed below.
  /// [mode] String. When `action` is `share`, a `mode` value of `attachment-route` places the attachment and return routes in each of the `share_with` segments. When `action` is `send-via`, indicates the mode used for packets. Valid values: `attachment-route`, `single-hop`, `dual-hop`.
  /// [routingPolicyNames] A list of routing policy names to apply to segment sharing. The routing policies control how routes are propagated between the shared segments. Only applicable when `action` is `share`. Available in policy version `2025.11` and later.
  /// [segment] Name of the segment.
  /// [shareWithExcepts] A set subtraction of segments to not share with.
  /// [shareWiths] A list of strings to share with. Must be a substring is all segments. Valid values include: `["*"]` or `["<segment-names>"]`.
  /// [via] The network function groups and any edge overrides associated with the action.
  /// [whenSentTo] The destination segments for the `send-via` or `send-to` `action`.
  GetCoreNetworkPolicyDocumentSegmentAction({
    required this.action,
    this.description,
    this.destinationCidrBlocks,
    this.destinations,
    this.edgeLocationAssociation,
    this.mode,
    this.routingPolicyNames,
    required this.segment,
    this.shareWithExcepts,
    this.shareWiths,
    this.via,
    this.whenSentTo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'destinationCidrBlocks': ?destinationCidrBlocks,
      'destinations': ?destinations,
      'edgeLocationAssociation': ?pulumi.Input.mapOptionalInputValue<GetCoreNetworkPolicyDocumentSegmentActionEdgeLocationAssociation, Map<String, dynamic>>(edgeLocationAssociation, (value) => value.toMap()),
      'mode': ?mode,
      'routingPolicyNames': ?routingPolicyNames,
      'segment': segment,
      'shareWithExcepts': ?shareWithExcepts,
      'shareWiths': ?shareWiths,
      'via': ?pulumi.Input.mapOptionalInputValue<GetCoreNetworkPolicyDocumentSegmentActionVia, Map<String, dynamic>>(via, (value) => value.toMap()),
      'whenSentTo': ?pulumi.Input.mapOptionalInputValue<GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo, Map<String, dynamic>>(whenSentTo, (value) => value.toMap()),
    };
  }

  factory GetCoreNetworkPolicyDocumentSegmentAction.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentSegmentAction(
      action: (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationCidrBlocks: map['destinationCidrBlocks'] == null ? null : ((map['destinationCidrBlocks'] as List).cast<String>()).input(),
      destinations: map['destinations'] == null ? null : ((map['destinations'] as List).cast<String>()).input(),
      edgeLocationAssociation: map['edgeLocationAssociation'] == null ? null : (GetCoreNetworkPolicyDocumentSegmentActionEdgeLocationAssociation.fromMap((map['edgeLocationAssociation'] as Map).cast<String, dynamic>())).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      routingPolicyNames: map['routingPolicyNames'] == null ? null : ((map['routingPolicyNames'] as List).cast<String>()).input(),
      segment: (map['segment'] as String).input(),
      shareWithExcepts: map['shareWithExcepts'] == null ? null : ((map['shareWithExcepts'] as List).cast<String>()).input(),
      shareWiths: map['shareWiths'] == null ? null : ((map['shareWiths'] as List).cast<String>()).input(),
      via: map['via'] == null ? null : (GetCoreNetworkPolicyDocumentSegmentActionVia.fromMap((map['via'] as Map).cast<String, dynamic>())).input(),
      whenSentTo: map['whenSentTo'] == null ? null : (GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo.fromMap((map['whenSentTo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

