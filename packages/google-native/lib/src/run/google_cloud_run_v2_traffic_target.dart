// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_run_v2_traffic_target_type.dart';

/// Holds a single traffic routing entry for the Service. Allocations can be done to a specific Revision name, or pointing to the latest Ready Revision.
class GoogleCloudRunV2TrafficTarget {
  /// Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  final int? percent;

  /// Revision to which to send this portion of traffic, if traffic allocation is by revision.
  final String? revision;

  /// Indicates a string to be part of the URI to exclusively reference this target.
  final String? tag;

  /// The allocation type for this traffic target.
  final GoogleCloudRunV2TrafficTargetType? type;

  /// Creates a new [GoogleCloudRunV2TrafficTarget].
  /// [percent] Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  /// [revision] Revision to which to send this portion of traffic, if traffic allocation is by revision.
  /// [tag] Indicates a string to be part of the URI to exclusively reference this target.
  /// [type] The allocation type for this traffic target.
  GoogleCloudRunV2TrafficTarget({
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
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory GoogleCloudRunV2TrafficTarget.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2TrafficTarget(
      percent: map['percent'] == null ? null : map['percent'] as int,
      revision: map['revision'] == null ? null : map['revision'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
      type: map['type'] == null
          ? null
          : GoogleCloudRunV2TrafficTargetType.fromValue(map['type'] as String),
    );
  }
}
