// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties specific to the NFS protocol.
class NfsProtocolPropertiesResponse {
  /// Root squash defines how root users on clients are mapped to the NFS share.
  final pulumi.Input<String>? rootSquash;

  /// Creates a new [NfsProtocolPropertiesResponse].
  /// [rootSquash] Root squash defines how root users on clients are mapped to the NFS share.
  const NfsProtocolPropertiesResponse({
    this.rootSquash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rootSquash': ?rootSquash,
    };
  }

  factory NfsProtocolPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NfsProtocolPropertiesResponse(
      rootSquash: (() { final guardedValue = map['rootSquash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

