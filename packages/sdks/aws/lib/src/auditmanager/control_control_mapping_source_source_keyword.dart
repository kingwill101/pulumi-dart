// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlControlMappingSourceSourceKeyword {
  /// Input method for the keyword. Valid values are `INPUT_TEXT`, `SELECT_FROM_LIST`, or `UPLOAD_FILE`.
  final pulumi.Input<String> keywordInputType;
  /// The value of the keyword that's used when mapping a control data source. For example, this can be a CloudTrail event name, a rule name for Config, a Security Hub control, or the name of an Amazon Web Services API call. See the [Audit Manager supported control data sources documentation](https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources.html) for more information.
  final pulumi.Input<String> keywordValue;

  /// Creates a new [ControlControlMappingSourceSourceKeyword].
  /// [keywordInputType] Input method for the keyword. Valid values are `INPUT_TEXT`, `SELECT_FROM_LIST`, or `UPLOAD_FILE`.
  /// [keywordValue] The value of the keyword that's used when mapping a control data source. For example, this can be a CloudTrail event name, a rule name for Config, a Security Hub control, or the name of an Amazon Web Services API call. See the [Audit Manager supported control data sources documentation](https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources.html) for more information.
  ControlControlMappingSourceSourceKeyword({
    required this.keywordInputType,
    required this.keywordValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keywordInputType': keywordInputType,
      'keywordValue': keywordValue,
    };
  }

  factory ControlControlMappingSourceSourceKeyword.fromMap(Map<String, dynamic> map) {
    return ControlControlMappingSourceSourceKeyword(
      keywordInputType: (map['keywordInputType'] as String).input(),
      keywordValue: (map['keywordValue'] as String).input(),
    );
  }
}

