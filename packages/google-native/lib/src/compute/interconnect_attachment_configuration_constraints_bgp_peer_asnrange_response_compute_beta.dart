// ignore_for_file: unused_element, unnecessary_cast

class InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeBeta {
  final int max;
  final int min;

  /// Creates a new [InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeBeta].
  /// [max] Required.
  /// [min] Required.
  InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeBeta({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeBeta(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
