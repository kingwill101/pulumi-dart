// ignore_for_file: unused_element, unnecessary_cast

import 'failure_detail.dart';
import 'inconclusive_detail.dart';
import 'outcome_summary.dart';
import 'skipped_detail.dart';
import 'success_detail.dart';

/// Interprets a result so that humans and machines can act on it.
class Outcome {
  /// More information about a FAILURE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not FAILURE. Optional
  final FailureDetail? failureDetail;
  /// More information about an INCONCLUSIVE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not INCONCLUSIVE. Optional
  final InconclusiveDetail? inconclusiveDetail;
  /// More information about a SKIPPED outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SKIPPED. Optional
  final SkippedDetail? skippedDetail;
  /// More information about a SUCCESS outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SUCCESS. Optional
  final SuccessDetail? successDetail;
  /// The simplest way to interpret a result. Required
  final OutcomeSummary? summary;

  /// Creates a new [Outcome].
  /// [failureDetail] More information about a FAILURE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not FAILURE. Optional
  /// [inconclusiveDetail] More information about an INCONCLUSIVE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not INCONCLUSIVE. Optional
  /// [skippedDetail] More information about a SKIPPED outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SKIPPED. Optional
  /// [successDetail] More information about a SUCCESS outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SUCCESS. Optional
  /// [summary] The simplest way to interpret a result. Required
  Outcome({
    this.failureDetail,
    this.inconclusiveDetail,
    this.skippedDetail,
    this.successDetail,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureDetail': ?failureDetail == null ? null : failureDetail!.toMap(),
      'inconclusiveDetail': ?inconclusiveDetail == null ? null : inconclusiveDetail!.toMap(),
      'skippedDetail': ?skippedDetail == null ? null : skippedDetail!.toMap(),
      'successDetail': ?successDetail == null ? null : successDetail!.toMap(),
      'summary': ?summary == null ? null : summary!.value,
    };
  }

  factory Outcome.fromMap(Map<String, dynamic> map) {
    return Outcome(
      failureDetail: map['failureDetail'] == null ? null : FailureDetail.fromMap((map['failureDetail'] as Map).cast<String, dynamic>()),
      inconclusiveDetail: map['inconclusiveDetail'] == null ? null : InconclusiveDetail.fromMap((map['inconclusiveDetail'] as Map).cast<String, dynamic>()),
      skippedDetail: map['skippedDetail'] == null ? null : SkippedDetail.fromMap((map['skippedDetail'] as Map).cast<String, dynamic>()),
      successDetail: map['successDetail'] == null ? null : SuccessDetail.fromMap((map['successDetail'] as Map).cast<String, dynamic>()),
      summary: map['summary'] == null ? null : OutcomeSummary.fromValue(map['summary'] as String),
    );
  }
}

