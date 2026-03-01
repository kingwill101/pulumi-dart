// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTraffic {
  /// Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  final int percent;

  /// Revision to which to send this portion of traffic, if traffic allocation is by revision.
  final String revision;

  /// Indicates a string to be part of the URI to exclusively reference this target.
  final String tag;

  /// The allocation type for this traffic target. Possible values: ["TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST", "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"]
  final String type;

  /// Creates a new [GetServiceTraffic].
  /// [percent] Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  /// [revision] Revision to which to send this portion of traffic, if traffic allocation is by revision.
  /// [tag] Indicates a string to be part of the URI to exclusively reference this target.
  /// [type] The allocation type for this traffic target. Possible values: ["TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST", "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"]
  GetServiceTraffic({
    required this.percent,
    required this.revision,
    required this.tag,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': percent,
      'revision': revision,
      'tag': tag,
      'type': type,
    };
  }

  factory GetServiceTraffic.fromMap(Map<String, dynamic> map) {
    return GetServiceTraffic(
      percent: map['percent'] as int,
      revision: map['revision'] as String,
      tag: map['tag'] as String,
      type: map['type'] as String,
    );
  }
}
