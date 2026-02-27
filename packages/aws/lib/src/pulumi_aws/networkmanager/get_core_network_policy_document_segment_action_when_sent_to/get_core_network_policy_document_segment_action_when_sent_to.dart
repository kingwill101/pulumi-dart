// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo {
  /// A list of strings. The list of segments that the `send-via` `action` uses.
  final List<String>? segments;

  GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo({
    this.segments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final segmentsValue = segments;
    if (segmentsValue != null) {
      map['segments'] = segmentsValue;
    }
    return map;
  }

  factory GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo(
      segments: map['segments'] == null
          ? null
          : (map['segments'] as List).cast<String>(),
    );
  }
}
