// ignore_for_file: unused_element, unnecessary_cast

/// Information for an interconnect attachment when this belongs to an interconnect of type DEDICATED.
class InterconnectAttachmentPrivateInfoResponseComputeV1 {
  /// 802.1q encapsulation tag to be used for traffic between Google and the customer, going to and from this network and region.
  final int tag8021q;

  InterconnectAttachmentPrivateInfoResponseComputeV1({
    required this.tag8021q,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tag8021q'] = tag8021q;
    return map;
  }

  factory InterconnectAttachmentPrivateInfoResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentPrivateInfoResponseComputeV1(
      tag8021q: map['tag8021q'] as int,
    );
  }
}
