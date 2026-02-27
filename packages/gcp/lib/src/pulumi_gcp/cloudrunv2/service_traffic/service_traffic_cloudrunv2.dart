// ignore_for_file: unused_element, unnecessary_cast

class ServiceTrafficCloudrunv2 {
  /// Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  final int? percent;

  /// Revision to which to send this portion of traffic, if traffic allocation is by revision.
  final String? revision;

  /// Indicates a string to be part of the URI to exclusively reference this target.
  final String? tag;

  /// The allocation type for this traffic target.
  /// Possible values are: `TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST`, `TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION`.
  final String? type;

  ServiceTrafficCloudrunv2({
    this.percent,
    this.revision,
    this.tag,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final percentValue = percent;
    if (percentValue != null) {
      map['percent'] = percentValue;
    }
    final revisionValue = revision;
    if (revisionValue != null) {
      map['revision'] = revisionValue;
    }
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ServiceTrafficCloudrunv2.fromMap(Map<String, dynamic> map) {
    return ServiceTrafficCloudrunv2(
      percent: map['percent'] == null ? null : map['percent'] as int,
      revision: map['revision'] == null ? null : map['revision'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
