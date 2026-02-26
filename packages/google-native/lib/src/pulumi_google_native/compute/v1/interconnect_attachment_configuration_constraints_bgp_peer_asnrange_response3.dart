// ignore_for_file: unused_element, unnecessary_cast

class InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse3 {
  final int max;
  final int min;

  InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse3({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse3.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse3(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
