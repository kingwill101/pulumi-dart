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

  /// Creates a new [GoogleCloudRunV2TrafficTargetStatusResponse].
  /// [percent] Specifies percent of the traffic to this Revision.
  /// [revision] Revision to which this traffic is sent.
  /// [tag] Indicates the string used in the URI to exclusively reference this target.
  /// [type] The allocation type for this traffic target.
  /// [uri] Displays the target URI.
  GoogleCloudRunV2TrafficTargetStatusResponse({
    required this.percent,
    required this.revision,
    required this.tag,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': percent,
      'revision': revision,
      'tag': tag,
      'type': type,
      'uri': uri,
    };
  }

  factory GoogleCloudRunV2TrafficTargetStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRunV2TrafficTargetStatusResponse(
      percent: map['percent'] as int,
      revision: map['revision'] as String,
      tag: map['tag'] as String,
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}
