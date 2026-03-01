// ignore_for_file: unused_element, unnecessary_cast

import 'failure_detail_response.dart';
import 'inconclusive_detail_response.dart';
import 'skipped_detail_response.dart';
import 'success_detail_response.dart';

/// Interprets a result so that humans and machines can act on it.
class OutcomeResponse {
  /// More information about a FAILURE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not FAILURE. Optional
  final FailureDetailResponse failureDetail;

  /// More information about an INCONCLUSIVE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not INCONCLUSIVE. Optional
  final InconclusiveDetailResponse inconclusiveDetail;

  /// More information about a SKIPPED outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SKIPPED. Optional
  final SkippedDetailResponse skippedDetail;

  /// More information about a SUCCESS outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SUCCESS. Optional
  final SuccessDetailResponse successDetail;

  /// The simplest way to interpret a result. Required
  final String summary;

  /// Creates a new [OutcomeResponse].
  /// [failureDetail] More information about a FAILURE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not FAILURE. Optional
  /// [inconclusiveDetail] More information about an INCONCLUSIVE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not INCONCLUSIVE. Optional
  /// [skippedDetail] More information about a SKIPPED outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SKIPPED. Optional
  /// [successDetail] More information about a SUCCESS outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SUCCESS. Optional
  /// [summary] The simplest way to interpret a result. Required
  OutcomeResponse({
    required this.failureDetail,
    required this.inconclusiveDetail,
    required this.skippedDetail,
    required this.successDetail,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureDetail': failureDetail.toMap(),
      'inconclusiveDetail': inconclusiveDetail.toMap(),
      'skippedDetail': skippedDetail.toMap(),
      'successDetail': successDetail.toMap(),
      'summary': summary,
    };
  }

  factory OutcomeResponse.fromMap(Map<String, dynamic> map) {
    return OutcomeResponse(
      failureDetail: FailureDetailResponse.fromMap(
        (map['failureDetail'] as Map).cast<String, dynamic>(),
      ),
      inconclusiveDetail: InconclusiveDetailResponse.fromMap(
        (map['inconclusiveDetail'] as Map).cast<String, dynamic>(),
      ),
      skippedDetail: SkippedDetailResponse.fromMap(
        (map['skippedDetail'] as Map).cast<String, dynamic>(),
      ),
      successDetail: SuccessDetailResponse.fromMap(
        (map['successDetail'] as Map).cast<String, dynamic>(),
      ),
      summary: map['summary'] as String,
    );
  }
}
