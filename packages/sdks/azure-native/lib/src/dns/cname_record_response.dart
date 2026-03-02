// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A CNAME record.
class CnameRecordResponse {
  /// The canonical name for this CNAME record.
  final pulumi.Input<String>? cname;

  /// Creates a new [CnameRecordResponse].
  /// [cname] The canonical name for this CNAME record.
  CnameRecordResponse({
    this.cname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cname': ?cname,
    };
  }

  factory CnameRecordResponse.fromMap(Map<String, dynamic> map) {
    return CnameRecordResponse(
      cname: map['cname'] == null ? null : (map['cname']! as String).input(),
    );
  }
}

