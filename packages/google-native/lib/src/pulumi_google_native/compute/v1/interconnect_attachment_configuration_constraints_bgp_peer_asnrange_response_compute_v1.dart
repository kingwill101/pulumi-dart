// ignore_for_file: unused_element, unnecessary_cast

class InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1 {
  final int max;
  final int min;

  InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
