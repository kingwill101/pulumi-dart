// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTrafficStatus {
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

  /// Creates a new [GetServiceTrafficStatus].
  /// [percent] Specifies percent of the traffic to this Revision.
  /// [revision] Revision to which this traffic is sent.
  /// [tag] Indicates the string used in the URI to exclusively reference this target.
  /// [type] The allocation type for this traffic target.
  /// [uri] Displays the target URI.
  GetServiceTrafficStatus({
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

  factory GetServiceTrafficStatus.fromMap(Map<String, dynamic> map) {
    return GetServiceTrafficStatus(
      percent: map['percent'] as int,
      revision: map['revision'] as String,
      tag: map['tag'] as String,
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}

