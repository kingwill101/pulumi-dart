// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BatchReportModeTypeEnumValue
class BatchReportModeTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [BatchReportModeTypeEnumValueResponse].
  /// [value] Property value
  BatchReportModeTypeEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory BatchReportModeTypeEnumValueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BatchReportModeTypeEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
