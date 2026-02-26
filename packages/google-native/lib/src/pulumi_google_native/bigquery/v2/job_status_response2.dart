// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'error_proto_response.dart';

class JobStatusResponse2 {
  /// Final error result of the job. If present, indicates that the job has completed and was unsuccessful.
  final ErrorProtoResponse errorResult;

  /// The first errors encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.
  final List<ErrorProtoResponse> errors;

  /// Running state of the job.
  final String state;

  JobStatusResponse2({
    required this.errorResult,
    required this.errors,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errorResult'] = errorResult.toMap();
    map['errors'] = Input.encodeList<ErrorProtoResponse, Map<String, dynamic>>(
        errors, (value) => value.toMap());
    map['state'] = state;
    return map;
  }

  factory JobStatusResponse2.fromMap(Map<String, dynamic> map) {
    return JobStatusResponse2(
      errorResult: ErrorProtoResponse.fromMap(
          (map['errorResult'] as Map).cast<String, dynamic>()),
      errors: Input.decodeList<ErrorProtoResponse>(
          map['errors'],
          (value) => ErrorProtoResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
    );
  }
}
