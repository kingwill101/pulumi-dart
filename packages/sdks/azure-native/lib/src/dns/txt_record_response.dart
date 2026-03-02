// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A TXT record.
class TxtRecordResponse {
  /// The text value of this TXT record.
  final pulumi.Input<List<String>>? value;

  /// Creates a new [TxtRecordResponse].
  /// [value] The text value of this TXT record.
  TxtRecordResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TxtRecordResponse.fromMap(Map<String, dynamic> map) {
    return TxtRecordResponse(
      value: map['value'] == null ? null : ((map['value'] as List).cast<String>()).input(),
    );
  }
}

