// ignore_for_file: unused_element, unnecessary_cast

import '../get_core_network_policy_document_segment_action_edge_location_association/get_core_network_policy_document_segment_action_edge_location_association.dart';
import '../get_core_network_policy_document_segment_action_via/get_core_network_policy_document_segment_action_via.dart';
import '../get_core_network_policy_document_segment_action_when_sent_to/get_core_network_policy_document_segment_action_when_sent_to.dart';

class GetCoreNetworkPolicyDocumentSegmentAction {
  /// Action to take for the chosen segment. Valid values: `create-route`, <span pulumi-lang-nodejs="`share`" pulumi-lang-dotnet="`Share`" pulumi-lang-go="`share`" pulumi-lang-python="`share`" pulumi-lang-yaml="`share`" pulumi-lang-java="`share`">`share`</span>, `send-via`, `send-to`, and `associate-routing-policy` (available in policy version `2025.11` and later).
  final String action;

  /// A user-defined string describing the segment action.
  final String? description;

  /// List of strings containing CIDRs. You can define the IPv4 and IPv6 CIDR notation for each AWS Region. For example, `10.1.0.0/16` or `2001:db8::/56`. This is an array of CIDR notation strings.
  final List<String>? destinationCidrBlocks;

  /// A list of strings. Valid values include `["blackhole"]` or a list of attachment ids.
  final List<String>? destinations;

  /// Associates routing policies with specific edge location pairs. Available in policy version `2025.11` and later. Detailed below.
  final GetCoreNetworkPolicyDocumentSegmentActionEdgeLocationAssociation?
      edgeLocationAssociation;

  /// String. When <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span> is <span pulumi-lang-nodejs="`share`" pulumi-lang-dotnet="`Share`" pulumi-lang-go="`share`" pulumi-lang-python="`share`" pulumi-lang-yaml="`share`" pulumi-lang-java="`share`">`share`</span>, a <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> value of `attachment-route` places the attachment and return routes in each of the <span pulumi-lang-nodejs="`shareWith`" pulumi-lang-dotnet="`ShareWith`" pulumi-lang-go="`shareWith`" pulumi-lang-python="`share_with`" pulumi-lang-yaml="`shareWith`" pulumi-lang-java="`shareWith`">`share_with`</span> segments. When <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span> is `send-via`, indicates the mode used for packets. Valid values: `attachment-route`, `single-hop`, `dual-hop`.
  final String? mode;

  /// A list of routing policy names to apply to segment sharing. The routing policies control how routes are propagated between the shared segments. Only applicable when <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span> is <span pulumi-lang-nodejs="`share`" pulumi-lang-dotnet="`Share`" pulumi-lang-go="`share`" pulumi-lang-python="`share`" pulumi-lang-yaml="`share`" pulumi-lang-java="`share`">`share`</span>. Available in policy version `2025.11` and later.
  final List<String>? routingPolicyNames;

  /// Name of the segment.
  final String segment;

  /// A set subtraction of segments to not share with.
  final List<String>? shareWithExcepts;

  /// A list of strings to share with. Must be a substring is all segments. Valid values include: `["*"]` or `["<segment-names>"]`.
  final List<String>? shareWiths;

  /// The network function groups and any edge overrides associated with the action.
  final GetCoreNetworkPolicyDocumentSegmentActionVia? via;

  /// The destination segments for the `send-via` or `send-to` <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span>.
  final GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo? whenSentTo;

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
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final destinationCidrBlocksValue = destinationCidrBlocks;
    if (destinationCidrBlocksValue != null) {
      map['destinationCidrBlocks'] = destinationCidrBlocksValue;
    }
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = destinationsValue;
    }
    final edgeLocationAssociationValue = edgeLocationAssociation;
    if (edgeLocationAssociationValue != null) {
      map['edgeLocationAssociation'] = edgeLocationAssociationValue.toMap();
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final routingPolicyNamesValue = routingPolicyNames;
    if (routingPolicyNamesValue != null) {
      map['routingPolicyNames'] = routingPolicyNamesValue;
    }
    map['segment'] = segment;
    final shareWithExceptsValue = shareWithExcepts;
    if (shareWithExceptsValue != null) {
      map['shareWithExcepts'] = shareWithExceptsValue;
    }
    final shareWithsValue = shareWiths;
    if (shareWithsValue != null) {
      map['shareWiths'] = shareWithsValue;
    }
    final viaValue = via;
    if (viaValue != null) {
      map['via'] = viaValue.toMap();
    }
    final whenSentToValue = whenSentTo;
    if (whenSentToValue != null) {
      map['whenSentTo'] = whenSentToValue.toMap();
    }
    return map;
  }

  factory GetCoreNetworkPolicyDocumentSegmentAction.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentSegmentAction(
      action: map['action'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      destinationCidrBlocks: map['destinationCidrBlocks'] == null
          ? null
          : (map['destinationCidrBlocks'] as List).cast<String>(),
      destinations: map['destinations'] == null
          ? null
          : (map['destinations'] as List).cast<String>(),
      edgeLocationAssociation: map['edgeLocationAssociation'] == null
          ? null
          : GetCoreNetworkPolicyDocumentSegmentActionEdgeLocationAssociation
              .fromMap((map['edgeLocationAssociation'] as Map)
                  .cast<String, dynamic>()),
      mode: map['mode'] == null ? null : map['mode'] as String,
      routingPolicyNames: map['routingPolicyNames'] == null
          ? null
          : (map['routingPolicyNames'] as List).cast<String>(),
      segment: map['segment'] as String,
      shareWithExcepts: map['shareWithExcepts'] == null
          ? null
          : (map['shareWithExcepts'] as List).cast<String>(),
      shareWiths: map['shareWiths'] == null
          ? null
          : (map['shareWiths'] as List).cast<String>(),
      via: map['via'] == null
          ? null
          : GetCoreNetworkPolicyDocumentSegmentActionVia.fromMap(
              (map['via'] as Map).cast<String, dynamic>()),
      whenSentTo: map['whenSentTo'] == null
          ? null
          : GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo.fromMap(
              (map['whenSentTo'] as Map).cast<String, dynamic>()),
    );
  }
}
