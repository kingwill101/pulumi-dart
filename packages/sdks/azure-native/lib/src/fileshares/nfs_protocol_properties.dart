// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties specific to the NFS protocol.
class NfsProtocolProperties {
  /// Root squash defines how root users on clients are mapped to the NFS share.
  final pulumi.Input<String>? rootSquash;

  /// Creates a new [NfsProtocolProperties].
  /// [rootSquash] Root squash defines how root users on clients are mapped to the NFS share.
  const NfsProtocolProperties({
    this.rootSquash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rootSquash': ?rootSquash,
    };
  }

  factory NfsProtocolProperties.fromMap(Map<String, dynamic> map) {
    return NfsProtocolProperties(
      rootSquash: (() { final guardedValue = map['rootSquash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
