// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentSegment {
  /// List of strings of segment names that explicitly allows only routes from the segments that are listed in the array. Use the <span pulumi-lang-nodejs="`allowFilter`" pulumi-lang-dotnet="`AllowFilter`" pulumi-lang-go="`allowFilter`" pulumi-lang-python="`allow_filter`" pulumi-lang-yaml="`allowFilter`" pulumi-lang-java="`allowFilter`">`allow_filter`</span> setting if a segment has a well-defined group of other segments that connectivity should be restricted to. It is applied after routes have been shared in <span pulumi-lang-nodejs="`segmentActions`" pulumi-lang-dotnet="`SegmentActions`" pulumi-lang-go="`segmentActions`" pulumi-lang-python="`segment_actions`" pulumi-lang-yaml="`segmentActions`" pulumi-lang-java="`segmentActions`">`segment_actions`</span>. If a segment is listed in <span pulumi-lang-nodejs="`allowFilter`" pulumi-lang-dotnet="`AllowFilter`" pulumi-lang-go="`allowFilter`" pulumi-lang-python="`allow_filter`" pulumi-lang-yaml="`allowFilter`" pulumi-lang-java="`allowFilter`">`allow_filter`</span>, attachments between the two segments will have routes if they are also shared in the segment-actions area. For example, you might have a segment named "video-producer" that should only ever share routes with a "video-distributor" segment, no matter how many other share statements are created.
  final List<String>? allowFilters;

  /// An array of segments that disallows routes from the segments listed in the array. It is applied only after routes have been shared in <span pulumi-lang-nodejs="`segmentActions`" pulumi-lang-dotnet="`SegmentActions`" pulumi-lang-go="`segmentActions`" pulumi-lang-python="`segment_actions`" pulumi-lang-yaml="`segmentActions`" pulumi-lang-java="`segmentActions`">`segment_actions`</span>. If a segment is listed in the <span pulumi-lang-nodejs="`denyFilter`" pulumi-lang-dotnet="`DenyFilter`" pulumi-lang-go="`denyFilter`" pulumi-lang-python="`deny_filter`" pulumi-lang-yaml="`denyFilter`" pulumi-lang-java="`denyFilter`">`deny_filter`</span>, attachments between the two segments will never have routes shared across them. For example, you might have a "financial" payment segment that should never share routes with a "development" segment, regardless of how many other share statements are created. Adding the payments segment to the deny-filter parameter prevents any shared routes from being created with other segments.
  final List<String>? denyFilters;

  /// A user-defined string describing the segment.
  final String? description;

  /// A list of strings of AWS Region names. Allows you to define a more restrictive set of Regions for a segment. The edge location must be a subset of the locations that are defined for <span pulumi-lang-nodejs="`edgeLocations`" pulumi-lang-dotnet="`EdgeLocations`" pulumi-lang-go="`edgeLocations`" pulumi-lang-python="`edge_locations`" pulumi-lang-yaml="`edgeLocations`" pulumi-lang-java="`edgeLocations`">`edge_locations`</span> in the <span pulumi-lang-nodejs="`coreNetworkConfiguration`" pulumi-lang-dotnet="`CoreNetworkConfiguration`" pulumi-lang-go="`coreNetworkConfiguration`" pulumi-lang-python="`core_network_configuration`" pulumi-lang-yaml="`coreNetworkConfiguration`" pulumi-lang-java="`coreNetworkConfiguration`">`core_network_configuration`</span>.
  final List<String>? edgeLocations;

  /// This Boolean setting determines whether attachments on the same segment can communicate with each other. If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the only routes available will be either shared routes through the share actions, which are attachments in other segments, or static routes. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. For example, you might have a segment dedicated to "development" that should never allow VPCs to talk to each other, even if they’re on the same segment. In this example, you would keep the default parameter of <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? isolateAttachments;

  /// Unique name for a segment. The name is a string used in other parts of the policy document, as well as in the console for metrics and other reference points. Valid characters are a–z, and 0–9.
  final String name;

  /// This Boolean setting determines whether attachment requests are automatically approved or require acceptance. The default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, indicating that attachment requests require acceptance. For example, you might use this setting to allow a "sandbox" segment to allow any attachment request so that a core network or attachment administrator does not need to review and approve attachment requests. In this example, <span pulumi-lang-nodejs="`requireAttachmentAcceptance`" pulumi-lang-dotnet="`RequireAttachmentAcceptance`" pulumi-lang-go="`requireAttachmentAcceptance`" pulumi-lang-python="`require_attachment_acceptance`" pulumi-lang-yaml="`requireAttachmentAcceptance`" pulumi-lang-java="`requireAttachmentAcceptance`">`require_attachment_acceptance`</span> is set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? requireAttachmentAcceptance;

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
    final map = <String, dynamic>{};
    final allowFiltersValue = allowFilters;
    if (allowFiltersValue != null) {
      map['allowFilters'] = allowFiltersValue;
    }
    final denyFiltersValue = denyFilters;
    if (denyFiltersValue != null) {
      map['denyFilters'] = denyFiltersValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final edgeLocationsValue = edgeLocations;
    if (edgeLocationsValue != null) {
      map['edgeLocations'] = edgeLocationsValue;
    }
    final isolateAttachmentsValue = isolateAttachments;
    if (isolateAttachmentsValue != null) {
      map['isolateAttachments'] = isolateAttachmentsValue;
    }
    map['name'] = name;
    final requireAttachmentAcceptanceValue = requireAttachmentAcceptance;
    if (requireAttachmentAcceptanceValue != null) {
      map['requireAttachmentAcceptance'] = requireAttachmentAcceptanceValue;
    }
    return map;
  }

  factory GetCoreNetworkPolicyDocumentSegment.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentSegment(
      allowFilters: map['allowFilters'] == null
          ? null
          : (map['allowFilters'] as List).cast<String>(),
      denyFilters: map['denyFilters'] == null
          ? null
          : (map['denyFilters'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      edgeLocations: map['edgeLocations'] == null
          ? null
          : (map['edgeLocations'] as List).cast<String>(),
      isolateAttachments: map['isolateAttachments'] == null
          ? null
          : map['isolateAttachments'] as bool,
      name: map['name'] as String,
      requireAttachmentAcceptance: map['requireAttachmentAcceptance'] == null
          ? null
          : map['requireAttachmentAcceptance'] as bool,
    );
  }
}
