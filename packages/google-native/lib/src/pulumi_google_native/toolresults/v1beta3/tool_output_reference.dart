// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference2.dart';
import 'test_case_reference.dart';
import 'timestamp.dart';

/// A reference to a ToolExecution output file.
class ToolOutputReference {
  /// The creation time of the file. - In response: present if set by create/update request - In create/update request: optional
  final Timestamp? creationTime;

  /// A FileReference to an output file. - In response: always set - In create/update request: always set
  final FileReference2? output;

  /// The test case to which this output file belongs. - In response: present if set by create/update request - In create/update request: optional
  final TestCaseReference? testCase;

  ToolOutputReference({
    this.creationTime,
    this.output,
    this.testCase,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final creationTimeValue = creationTime;
    if (creationTimeValue != null) {
      map['creationTime'] = creationTimeValue.toMap();
    }
    final outputValue = output;
    if (outputValue != null) {
      map['output'] = outputValue.toMap();
    }
    final testCaseValue = testCase;
    if (testCaseValue != null) {
      map['testCase'] = testCaseValue.toMap();
    }
    return map;
  }

  factory ToolOutputReference.fromMap(Map<String, dynamic> map) {
    return ToolOutputReference(
      creationTime: map['creationTime'] == null
          ? null
          : Timestamp.fromMap(
              (map['creationTime'] as Map).cast<String, dynamic>()),
      output: map['output'] == null
          ? null
          : FileReference2.fromMap(
              (map['output'] as Map).cast<String, dynamic>()),
      testCase: map['testCase'] == null
          ? null
          : TestCaseReference.fromMap(
              (map['testCase'] as Map).cast<String, dynamic>()),
    );
  }
}
