// ignore_for_file: unused_element, unnecessary_cast

class ConnectAttachmentOptions {
  /// Protocol used for the attachment connection. Valid values: `GRE`, `NO_ENCAP`.
  final String? protocol;

  /// Creates a new [ConnectAttachmentOptions].
  /// [protocol] Protocol used for the attachment connection. Valid values: `GRE`, `NO_ENCAP`.
  ConnectAttachmentOptions({this.protocol});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'protocol': ?protocol};
  }

  factory ConnectAttachmentOptions.fromMap(Map<String, dynamic> map) {
    return ConnectAttachmentOptions(
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}
