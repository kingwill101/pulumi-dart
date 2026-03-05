// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRecordsResourceRecordSetResourceRecord {
  /// The DNS record value.
  final pulumi.Input<String> value;

  /// Creates a new [GetRecordsResourceRecordSetResourceRecord].
  /// [value] The DNS record value.
  GetRecordsResourceRecordSetResourceRecord({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory GetRecordsResourceRecordSetResourceRecord.fromMap(Map<String, dynamic> map) {
    return GetRecordsResourceRecordSetResourceRecord(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

