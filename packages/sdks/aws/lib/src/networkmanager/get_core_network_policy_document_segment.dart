// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentSegment {
  /// List of strings of segment names that explicitly allows only routes from the segments that are listed in the array. Use the `allow_filter` setting if a segment has a well-defined group of other segments that connectivity should be restricted to. It is applied after routes have been shared in `segment_actions`. If a segment is listed in `allow_filter`, attachments between the two segments will have routes if they are also shared in the segment-actions area. For example, you might have a segment named "video-producer" that should only ever share routes with a "video-distributor" segment, no matter how many other share statements are created.
  final pulumi.Input<List<String>>? allowFilters;
  /// An array of segments that disallows routes from the segments listed in the array. It is applied only after routes have been shared in `segment_actions`. If a segment is listed in the `deny_filter`, attachments between the two segments will never have routes shared across them. For example, you might have a "financial" payment segment that should never share routes with a "development" segment, regardless of how many other share statements are created. Adding the payments segment to the deny-filter parameter prevents any shared routes from being created with other segments.
  final pulumi.Input<List<String>>? denyFilters;
  /// A user-defined string describing the segment.
  final pulumi.Input<String>? description;
  /// A list of strings of AWS Region names. Allows you to define a more restrictive set of Regions for a segment. The edge location must be a subset of the locations that are defined for `edge_locations` in the `core_network_configuration`.
  final pulumi.Input<List<String>>? edgeLocations;
  /// This Boolean setting determines whether attachments on the same segment can communicate with each other. If set to `true`, the only routes available will be either shared routes through the share actions, which are attachments in other segments, or static routes. The default value is `false`. For example, you might have a segment dedicated to "development" that should never allow VPCs to talk to each other, even if they’re on the same segment. In this example, you would keep the default parameter of `false`.
  final pulumi.Input<bool>? isolateAttachments;
  /// Unique name for a segment. The name is a string used in other parts of the policy document, as well as in the console for metrics and other reference points. Valid characters are a–z, and 0–9.
  final pulumi.Input<String> name;
  /// This Boolean setting determines whether attachment requests are automatically approved or require acceptance. The default is `true`, indicating that attachment requests require acceptance. For example, you might use this setting to allow a "sandbox" segment to allow any attachment request so that a core network or attachment administrator does not need to review and approve attachment requests. In this example, `require_attachment_acceptance` is set to `false`.
  final pulumi.Input<bool>? requireAttachmentAcceptance;

  /// Creates a new [GetCoreNetworkPolicyDocumentSegment].
  /// [allowFilters] List of strings of segment names that explicitly allows only routes from the segments that are listed in the array. Use the `allow_filter` setting if a segment has a well-defined group of other segments that connectivity should be restricted to. It is applied after routes have been shared in `segment_actions`. If a segment is listed in `allow_filter`, attachments between the two segments will have routes if they are also shared in the segment-actions area. For example, you might have a segment named "video-producer" that should only ever share routes with a "video-distributor" segment, no matter how many other share statements are created.
  /// [denyFilters] An array of segments that disallows routes from the segments listed in the array. It is applied only after routes have been shared in `segment_actions`. If a segment is listed in the `deny_filter`, attachments between the two segments will never have routes shared across them. For example, you might have a "financial" payment segment that should never share routes with a "development" segment, regardless of how many other share statements are created. Adding the payments segment to the deny-filter parameter prevents any shared routes from being created with other segments.
  /// [description] A user-defined string describing the segment.
  /// [edgeLocations] A list of strings of AWS Region names. Allows you to define a more restrictive set of Regions for a segment. The edge location must be a subset of the locations that are defined for `edge_locations` in the `core_network_configuration`.
  /// [isolateAttachments] This Boolean setting determines whether attachments on the same segment can communicate with each other. If set to `true`, the only routes available will be either shared routes through the share actions, which are attachments in other segments, or static routes. The default value is `false`. For example, you might have a segment dedicated to "development" that should never allow VPCs to talk to each other, even if they’re on the same segment. In this example, you would keep the default parameter of `false`.
  /// [name] Unique name for a segment. The name is a string used in other parts of the policy document, as well as in the console for metrics and other reference points. Valid characters are a–z, and 0–9.
  /// [requireAttachmentAcceptance] This Boolean setting determines whether attachment requests are automatically approved or require acceptance. The default is `true`, indicating that attachment requests require acceptance. For example, you might use this setting to allow a "sandbox" segment to allow any attachment request so that a core network or attachment administrator does not need to review and approve attachment requests. In this example, `require_attachment_acceptance` is set to `false`.
  GetCoreNetworkPolicyDocumentSegment({
    this.allowFilters,
    this.denyFilters,
    this.description,
    this.edgeLocations,
    this.isolateAttachments,
    required this.name,
    this.requireAttachmentAcceptance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowFilters': ?allowFilters,
      'denyFilters': ?denyFilters,
      'description': ?description,
      'edgeLocations': ?edgeLocations,
      'isolateAttachments': ?isolateAttachments,
      'name': name,
      'requireAttachmentAcceptance': ?requireAttachmentAcceptance,
    };
  }

  factory GetCoreNetworkPolicyDocumentSegment.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentSegment(
      allowFilters: map['allowFilters'] == null ? null : (((map['allowFilters'] as List).cast<String>()).input()).input(),
      denyFilters: map['denyFilters'] == null ? null : (((map['denyFilters'] as List).cast<String>()).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      edgeLocations: map['edgeLocations'] == null ? null : (((map['edgeLocations'] as List).cast<String>()).input()).input(),
      isolateAttachments: map['isolateAttachments'] == null ? null : ((map['isolateAttachments'] as bool).input()).input(),
      name: (map['name'] as String).input(),
      requireAttachmentAcceptance: map['requireAttachmentAcceptance'] == null ? null : ((map['requireAttachmentAcceptance'] as bool).input()).input(),
    );
  }
}

