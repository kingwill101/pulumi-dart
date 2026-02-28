// ignore_for_file: unused_element, unnecessary_cast

class InterconnectAttachmentL2ForwardingGeneveHeader {
  /// VNI is a 24-bit unique virtual network identifier.
  final int? vni;

  /// Creates a new [InterconnectAttachmentL2ForwardingGeneveHeader].
  /// [vni] VNI is a 24-bit unique virtual network identifier.
  InterconnectAttachmentL2ForwardingGeneveHeader({
    this.vni,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vniValue = vni;
    if (vniValue != null) {
      map['vni'] = vniValue;
    }
    return map;
  }

  factory InterconnectAttachmentL2ForwardingGeneveHeader.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentL2ForwardingGeneveHeader(
      vni: map['vni'] == null ? null : map['vni'] as int,
    );
  }
}
