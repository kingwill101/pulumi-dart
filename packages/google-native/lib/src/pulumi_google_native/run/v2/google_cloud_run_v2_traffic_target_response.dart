// ignore_for_file: unused_element, unnecessary_cast

/// Holds a single traffic routing entry for the Service. Allocations can be done to a specific Revision name, or pointing to the latest Ready Revision.
class GoogleCloudRunV2TrafficTargetResponse {
  /// Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  final int percent;

  /// Revision to which to send this portion of traffic, if traffic allocation is by revision.
  final String revision;

  /// Indicates a string to be part of the URI to exclusively reference this target.
  final String tag;

  /// The allocation type for this traffic target.
  final String type;

  GoogleCloudRunV2TrafficTargetResponse({
    required this.percent,
    required this.revision,
    required this.tag,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['percent'] = percent;
    map['revision'] = revision;
    map['tag'] = tag;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudRunV2TrafficTargetResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRunV2TrafficTargetResponse(
      percent: map['percent'] as int,
      revision: map['revision'] as String,
      tag: map['tag'] as String,
      type: map['type'] as String,
    );
  }
}
