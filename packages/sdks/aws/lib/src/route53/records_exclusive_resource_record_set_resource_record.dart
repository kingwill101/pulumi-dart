// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordsExclusiveResourceRecordSetResourceRecord {
  /// DNS record value.
  final pulumi.Input<String> value;

  /// Creates a new [RecordsExclusiveResourceRecordSetResourceRecord].
  /// [value] DNS record value.
  RecordsExclusiveResourceRecordSetResourceRecord({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory RecordsExclusiveResourceRecordSetResourceRecord.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetResourceRecord(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

