// ignore_for_file: unused_element, unnecessary_cast

class InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse2 {
  final int max;
  final int min;

  InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse2({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse2.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse2(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
