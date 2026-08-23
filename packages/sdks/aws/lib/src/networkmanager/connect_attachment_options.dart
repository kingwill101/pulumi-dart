// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectAttachmentOptions {
  /// Protocol used for the attachment connection. Valid values: `GRE`, `NO_ENCAP`.
  final pulumi.Input<String>? protocol;

  /// Creates a new [ConnectAttachmentOptions].
  /// [protocol] Protocol used for the attachment connection. Valid values: `GRE`, `NO_ENCAP`.
  const ConnectAttachmentOptions({
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol,
    };
  }

  factory ConnectAttachmentOptions.fromMap(Map<String, dynamic> map) {
    return ConnectAttachmentOptions(
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
