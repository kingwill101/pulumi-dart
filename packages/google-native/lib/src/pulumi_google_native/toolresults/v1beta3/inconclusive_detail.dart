// ignore_for_file: unused_element, unnecessary_cast

/// Details for an outcome with an INCONCLUSIVE outcome summary.
class InconclusiveDetail {
  /// If the end user aborted the test execution before a pass or fail could be determined. For example, the user pressed ctrl-c which sent a kill signal to the test runner while the test was running.
  final bool? abortedByUser;

  /// If results are being provided to the user in certain cases of infrastructure failures
  final bool? hasErrorLogs;

  /// If the test runner could not determine success or failure because the test depends on a component other than the system under test which failed. For example, a mobile test requires provisioning a device where the test executes, and that provisioning can fail.
  final bool? infrastructureFailure;

  InconclusiveDetail({
    this.abortedByUser,
    this.hasErrorLogs,
    this.infrastructureFailure,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final abortedByUserValue = abortedByUser;
    if (abortedByUserValue != null) {
      map['abortedByUser'] = abortedByUserValue;
    }
    final hasErrorLogsValue = hasErrorLogs;
    if (hasErrorLogsValue != null) {
      map['hasErrorLogs'] = hasErrorLogsValue;
    }
    final infrastructureFailureValue = infrastructureFailure;
    if (infrastructureFailureValue != null) {
      map['infrastructureFailure'] = infrastructureFailureValue;
    }
    return map;
  }

  factory InconclusiveDetail.fromMap(Map<String, dynamic> map) {
    return InconclusiveDetail(
      abortedByUser:
          map['abortedByUser'] == null ? null : map['abortedByUser'] as bool,
      hasErrorLogs:
          map['hasErrorLogs'] == null ? null : map['hasErrorLogs'] as bool,
      infrastructureFailure: map['infrastructureFailure'] == null
          ? null
          : map['infrastructureFailure'] as bool,
    );
  }
}
