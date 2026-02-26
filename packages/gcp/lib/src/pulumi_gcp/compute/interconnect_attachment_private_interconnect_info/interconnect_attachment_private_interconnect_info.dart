// ignore_for_file: unused_element, unnecessary_cast

class InterconnectAttachmentPrivateInterconnectInfo {
  /// (Output)
  /// 802.1q encapsulation tag to be used for traffic between
  /// Google and the customer, going to and from this network and region.
  final int? tag8021q;

  InterconnectAttachmentPrivateInterconnectInfo({
    this.tag8021q,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tag8021qValue = tag8021q;
    if (tag8021qValue != null) {
      map['tag8021q'] = tag8021qValue;
    }
    return map;
  }

  factory InterconnectAttachmentPrivateInterconnectInfo.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentPrivateInterconnectInfo(
      tag8021q: map['tag8021q'] == null ? null : map['tag8021q'] as int,
    );
  }
}
