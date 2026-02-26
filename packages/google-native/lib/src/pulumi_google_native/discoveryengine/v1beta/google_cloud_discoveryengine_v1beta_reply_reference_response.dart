// ignore_for_file: unused_element, unnecessary_cast

/// Defines reference in reply.
class GoogleCloudDiscoveryengineV1betaReplyReferenceResponse {
  /// Anchor text.
  final String anchorText;

  /// Anchor text end index.
  final int end;

  /// Anchor text start index.
  final int start;

  /// URI link reference.
  final String uri;

  GoogleCloudDiscoveryengineV1betaReplyReferenceResponse({
    required this.anchorText,
    required this.end,
    required this.start,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['anchorText'] = anchorText;
    map['end'] = end;
    map['start'] = start;
    map['uri'] = uri;
    return map;
  }

  factory GoogleCloudDiscoveryengineV1betaReplyReferenceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaReplyReferenceResponse(
      anchorText: map['anchorText'] as String,
      end: map['end'] as int,
      start: map['start'] as int,
      uri: map['uri'] as String,
    );
  }
}
