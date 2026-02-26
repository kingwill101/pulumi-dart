// ignore_for_file: unused_element, unnecessary_cast

/// Represents the observed state of a single `TrafficTarget` entry.
class GoogleCloudRunV2TrafficTargetStatusResponse {
  /// Specifies percent of the traffic to this Revision.
  final int percent;

  /// Revision to which this traffic is sent.
  final String revision;

  /// Indicates the string used in the URI to exclusively reference this target.
  final String tag;

  /// The allocation type for this traffic target.
  final String type;

  /// Displays the target URI.
  final String uri;

  GoogleCloudRunV2TrafficTargetStatusResponse({
    required this.percent,
    required this.revision,
    required this.tag,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['percent'] = percent;
    map['revision'] = revision;
    map['tag'] = tag;
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }

  factory GoogleCloudRunV2TrafficTargetStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRunV2TrafficTargetStatusResponse(
      percent: map['percent'] as int,
      revision: map['revision'] as String,
      tag: map['tag'] as String,
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}
