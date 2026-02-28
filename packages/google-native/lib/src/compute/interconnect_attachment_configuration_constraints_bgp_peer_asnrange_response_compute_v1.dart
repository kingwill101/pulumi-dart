// ignore_for_file: unused_element, unnecessary_cast


class InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1 {
  final int max;
  final int min;

  /// Creates a new [InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1].
  /// [max] Required.
  /// [min] Required.
  InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}

