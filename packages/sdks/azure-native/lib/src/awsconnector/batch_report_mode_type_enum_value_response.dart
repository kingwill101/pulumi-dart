// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BatchReportModeTypeEnumValue
class BatchReportModeTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [BatchReportModeTypeEnumValueResponse].
  /// [value] Property value
  BatchReportModeTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory BatchReportModeTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return BatchReportModeTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

