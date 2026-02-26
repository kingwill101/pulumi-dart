// ignore_for_file: unused_element, unnecessary_cast

/// Details for an outcome with an INCONCLUSIVE outcome summary.
class InconclusiveDetailResponse {
  /// If the end user aborted the test execution before a pass or fail could be determined. For example, the user pressed ctrl-c which sent a kill signal to the test runner while the test was running.
  final bool abortedByUser;

  /// If results are being provided to the user in certain cases of infrastructure failures
  final bool hasErrorLogs;

  /// If the test runner could not determine success or failure because the test depends on a component other than the system under test which failed. For example, a mobile test requires provisioning a device where the test executes, and that provisioning can fail.
  final bool infrastructureFailure;

  InconclusiveDetailResponse({
    required this.abortedByUser,
    required this.hasErrorLogs,
    required this.infrastructureFailure,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abortedByUser'] = abortedByUser;
    map['hasErrorLogs'] = hasErrorLogs;
    map['infrastructureFailure'] = infrastructureFailure;
    return map;
  }

  factory InconclusiveDetailResponse.fromMap(Map<String, dynamic> map) {
    return InconclusiveDetailResponse(
      abortedByUser: map['abortedByUser'] as bool,
      hasErrorLogs: map['hasErrorLogs'] as bool,
      infrastructureFailure: map['infrastructureFailure'] as bool,
    );
  }
}
