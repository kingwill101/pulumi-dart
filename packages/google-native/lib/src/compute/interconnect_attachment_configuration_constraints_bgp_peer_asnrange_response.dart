// ignore_for_file: unused_element, unnecessary_cast

class InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse {
  final int max;
  final int min;

  /// Creates a new [InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse].
  /// [max] Required.
  /// [min] Required.
  InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
