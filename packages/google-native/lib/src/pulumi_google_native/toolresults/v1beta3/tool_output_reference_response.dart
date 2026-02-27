// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference_response_toolresults_v1beta3.dart';
import 'test_case_reference_response.dart';
import 'timestamp_response.dart';

/// A reference to a ToolExecution output file.
class ToolOutputReferenceResponse {
  /// The creation time of the file. - In response: present if set by create/update request - In create/update request: optional
  final TimestampResponse creationTime;

  /// A FileReference to an output file. - In response: always set - In create/update request: always set
  final FileReferenceResponseToolresultsV1beta3 output;

  /// The test case to which this output file belongs. - In response: present if set by create/update request - In create/update request: optional
  final TestCaseReferenceResponse testCase;

  ToolOutputReferenceResponse({
    required this.creationTime,
    required this.output,
    required this.testCase,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTime'] = creationTime.toMap();
    map['output'] = output.toMap();
    map['testCase'] = testCase.toMap();
    return map;
  }

  factory ToolOutputReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ToolOutputReferenceResponse(
      creationTime: TimestampResponse.fromMap(
          (map['creationTime'] as Map).cast<String, dynamic>()),
      output: FileReferenceResponseToolresultsV1beta3.fromMap(
          (map['output'] as Map).cast<String, dynamic>()),
      testCase: TestCaseReferenceResponse.fromMap(
          (map['testCase'] as Map).cast<String, dynamic>()),
    );
  }
}
