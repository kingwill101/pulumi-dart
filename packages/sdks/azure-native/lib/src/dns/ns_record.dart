// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An NS record.
class NsRecord {
  /// The name server name for this NS record.
  final pulumi.Input<String>? nsdname;

  /// Creates a new [NsRecord].
  /// [nsdname] The name server name for this NS record.
  const NsRecord({
    this.nsdname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nsdname': ?nsdname,
    };
  }

  factory NsRecord.fromMap(Map<String, dynamic> map) {
    return NsRecord(
      nsdname: (() { final guardedValue = map['nsdname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

