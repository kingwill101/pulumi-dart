// ignore_for_file: unused_element, unnecessary_cast


class ServiceTraffic {
  /// Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  final int? percent;
  /// Revision to which to send this portion of traffic, if traffic allocation is by revision.
  final String? revision;
  /// Indicates a string to be part of the URI to exclusively reference this target.
  final String? tag;
  /// The allocation type for this traffic target.
  /// Possible values are: `TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST`, `TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION`.
  final String? type;

  /// Creates a new [ServiceTraffic].
  /// [percent] Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  /// [revision] Revision to which to send this portion of traffic, if traffic allocation is by revision.
  /// [tag] Indicates a string to be part of the URI to exclusively reference this target.
  /// [type] The allocation type for this traffic target.
  ServiceTraffic({
    this.percent,
    this.revision,
    this.tag,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': ?percent,
      'revision': ?revision,
      'tag': ?tag,
      'type': ?type,
    };
  }

  factory ServiceTraffic.fromMap(Map<String, dynamic> map) {
    return ServiceTraffic(
      percent: map['percent'] == null ? null : map['percent'] as int,
      revision: map['revision'] == null ? null : map['revision'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

