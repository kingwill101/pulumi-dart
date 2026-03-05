// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An NS record.
class NsRecordResponse {
  /// The name server name for this NS record.
  final pulumi.Input<String>? nsdname;

  /// Creates a new [NsRecordResponse].
  /// [nsdname] The name server name for this NS record.
  NsRecordResponse({
    this.nsdname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nsdname': ?nsdname,
    };
  }

  factory NsRecordResponse.fromMap(Map<String, dynamic> map) {
    return NsRecordResponse(
      nsdname: (() { final guardedValue = map['nsdname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

