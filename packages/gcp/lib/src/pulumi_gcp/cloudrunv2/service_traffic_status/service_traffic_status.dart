// ignore_for_file: unused_element, unnecessary_cast

class ServiceTrafficStatus {
  /// (Output)
  /// Specifies percent of the traffic to this Revision.
  final int? percent;

  /// (Output)
  /// Revision to which this traffic is sent.
  final String? revision;

  /// (Output)
  /// Indicates the string used in the URI to exclusively reference this target.
  final String? tag;

  /// (Output)
  /// The allocation type for this traffic target.
  final String? type;

  /// (Output)
  /// Displays the target URI.
  final String? uri;

  ServiceTrafficStatus({
    this.percent,
    this.revision,
    this.tag,
    this.type,
    this.uri,
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
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory ServiceTrafficStatus.fromMap(Map<String, dynamic> map) {
    return ServiceTrafficStatus(
      percent: map['percent'] == null ? null : map['percent'] as int,
      revision: map['revision'] == null ? null : map['revision'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
