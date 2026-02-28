// ignore_for_file: unused_element, unnecessary_cast

class InterconnectAttachmentGroupIntent {
  /// Which SLA the user intends this group to support.
  /// Possible values are: `PRODUCTION_NON_CRITICAL`, `PRODUCTION_CRITICAL`, `NO_SLA`, `AVAILABILITY_SLA_UNSPECIFIED`.
  final String? availabilitySla;

  /// Creates a new [InterconnectAttachmentGroupIntent].
  /// [availabilitySla] Which SLA the user intends this group to support.
  InterconnectAttachmentGroupIntent({
    this.availabilitySla,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilitySlaValue = availabilitySla;
    if (availabilitySlaValue != null) {
      map['availabilitySla'] = availabilitySlaValue;
    }
    return map;
  }

  factory InterconnectAttachmentGroupIntent.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentGroupIntent(
      availabilitySla: map['availabilitySla'] == null
          ? null
          : map['availabilitySla'] as String,
    );
  }
}
