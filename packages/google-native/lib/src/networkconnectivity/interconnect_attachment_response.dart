// ignore_for_file: unused_element, unnecessary_cast

/// InterconnectAttachment that this route applies to.
class InterconnectAttachmentResponse {
  /// Optional. Cloud region to install this policy-based route on interconnect attachment. Use `all` to install it on all interconnect attachments.
  final String region;

  /// Creates a new [InterconnectAttachmentResponse].
  /// [region] Optional. Cloud region to install this policy-based route on interconnect attachment. Use `all` to install it on all interconnect attachments.
  InterconnectAttachmentResponse({
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['region'] = region;
    return map;
  }

  factory InterconnectAttachmentResponse.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentResponse(
      region: map['region'] as String,
    );
  }
}
