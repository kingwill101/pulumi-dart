// ignore_for_file: unused_element, unnecessary_cast


/// The overview of the compliance result for one report.
class OverviewStatusResponse {
  /// The count of all failed control.
  final int failedCount;
  /// The count of all manual control.
  final int manualCount;
  /// The count of all not applicable control.
  final int notApplicableCount;
  /// The count of all passed control.
  final int passedCount;
  /// The count of all pending for approval control.
  final int pendingCount;

  /// Creates a new [OverviewStatusResponse].
  /// [failedCount] The count of all failed control.
  /// [manualCount] The count of all manual control.
  /// [notApplicableCount] The count of all not applicable control.
  /// [passedCount] The count of all passed control.
  /// [pendingCount] The count of all pending for approval control.
  OverviewStatusResponse({
    required this.failedCount,
    required this.manualCount,
    required this.notApplicableCount,
    required this.passedCount,
    required this.pendingCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedCount': failedCount,
      'manualCount': manualCount,
      'notApplicableCount': notApplicableCount,
      'passedCount': passedCount,
      'pendingCount': pendingCount,
    };
  }

  factory OverviewStatusResponse.fromMap(Map<String, dynamic> map) {
    return OverviewStatusResponse(
      failedCount: map['failedCount'] as int,
      manualCount: map['manualCount'] as int,
      notApplicableCount: map['notApplicableCount'] as int,
      passedCount: map['passedCount'] as int,
      pendingCount: map['pendingCount'] as int,
    );
  }
}

