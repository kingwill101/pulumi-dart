// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A CNAME record.
class CnameRecord {
  /// The canonical name for this CNAME record.
  final pulumi.Input<String?>? cname;

  /// Creates a new [CnameRecord].
  /// [cname] The canonical name for this CNAME record.
  const CnameRecord({
    this.cname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cname': ?cname,
    };
  }

  factory CnameRecord.fromMap(Map<String, dynamic> map) {
    return CnameRecord(
      cname: (() { final guardedValue = map['cname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
