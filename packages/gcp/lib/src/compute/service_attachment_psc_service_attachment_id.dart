// ignore_for_file: unused_element, unnecessary_cast

class ServiceAttachmentPscServiceAttachmentId {
  /// (Output)
  /// The high 64 bits of the PSC service attachment ID.
  final String? high;

  /// (Output)
  /// The low 64 bits of the PSC service attachment ID.
  final String? low;

  /// Creates a new [ServiceAttachmentPscServiceAttachmentId].
  /// [high] (Output)
  /// [low] (Output)
  ServiceAttachmentPscServiceAttachmentId({this.high, this.low});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'high': ?high, 'low': ?low};
  }

  factory ServiceAttachmentPscServiceAttachmentId.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceAttachmentPscServiceAttachmentId(
      high: map['high'] == null ? null : map['high'] as String,
      low: map['low'] == null ? null : map['low'] as String,
    );
  }
}
