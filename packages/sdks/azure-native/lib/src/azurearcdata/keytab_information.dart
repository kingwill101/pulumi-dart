// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Keytab used for authenticate with Active Directory.
class KeytabInformation {
  /// A base64-encoded keytab.
  final pulumi.Input<String>? keytab;

  /// Creates a new [KeytabInformation].
  /// [keytab] A base64-encoded keytab.
  const KeytabInformation({
    this.keytab,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keytab': ?keytab,
    };
  }

  factory KeytabInformation.fromMap(Map<String, dynamic> map) {
    return KeytabInformation(
      keytab: (() { final guardedValue = map['keytab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

