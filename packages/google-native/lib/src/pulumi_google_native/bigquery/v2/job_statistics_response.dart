// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_statistics_response.dart';
import 'job_statistics2_response.dart';
import 'job_statistics3_response.dart';
import 'job_statistics4_response.dart';
import 'job_statistics5_response.dart';
import 'job_statistics_reservation_usage_item_response.dart';
import 'row_level_security_statistics_response.dart';
import 'script_statistics_response.dart';
import 'session_info_response.dart';
import 'transaction_info_response.dart';

class JobStatisticsResponse {
  /// [TrustedTester] [Output-only] Job progress (0.0 -> 1.0) for LOAD and EXTRACT jobs.
  final double completionRatio;

  /// Statistics for a copy job.
  final JobStatistics5Response copy;

  /// Creation time of this job, in milliseconds since the epoch. This field will be present on all jobs.
  final String creationTime;

  /// Statistics for data masking. Present only for query and extract jobs.
  final DataMaskingStatisticsResponse dataMaskingStatistics;

  /// End time of this job, in milliseconds since the epoch. This field will be present whenever a job is in the DONE state.
  final String endTime;

  /// Statistics for an extract job.
  final JobStatistics4Response extract;

  /// Statistics for a load job.
  final JobStatistics3Response load;

  /// Number of child jobs executed.
  final String numChildJobs;

  /// If this is a child job, the id of the parent.
  final String parentJobId;

  /// Statistics for a query job.
  final JobStatistics2Response query;

  /// Quotas which delayed this job's start time.
  final List<String> quotaDeferments;

  /// Name of the primary reservation assigned to this job. Note that this could be different than reservations reported in the reservation usage field if parent reservations were used to execute this job.
  final String reservationId;

  /// Job resource usage breakdown by reservation.
  final List<JobStatisticsReservationUsageItemResponse> reservationUsage;

  /// [Preview] Statistics for row-level security. Present only for query and extract jobs.
  final RowLevelSecurityStatisticsResponse rowLevelSecurityStatistics;

  /// Statistics for a child job of a script.
  final ScriptStatisticsResponse scriptStatistics;

  /// [Preview] Information of the session if this job is part of one.
  final SessionInfoResponse sessionInfo;

  /// Start time of this job, in milliseconds since the epoch. This field will be present when the job transitions from the PENDING state to either RUNNING or DONE.
  final String startTime;

  /// [Deprecated] Use the bytes processed in the query statistics instead.
  final String totalBytesProcessed;

  /// Slot-milliseconds for the job.
  final String totalSlotMs;

  /// [Alpha] Information of the multi-statement transaction if this job is part of one.
  final TransactionInfoResponse transactionInfo;

  JobStatisticsResponse({
    required this.completionRatio,
    required this.copy,
    required this.creationTime,
    required this.dataMaskingStatistics,
    required this.endTime,
    required this.extract,
    required this.load,
    required this.numChildJobs,
    required this.parentJobId,
    required this.query,
    required this.quotaDeferments,
    required this.reservationId,
    required this.reservationUsage,
    required this.rowLevelSecurityStatistics,
    required this.scriptStatistics,
    required this.sessionInfo,
    required this.startTime,
    required this.totalBytesProcessed,
    required this.totalSlotMs,
    required this.transactionInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['completionRatio'] = completionRatio;
    map['copy'] = copy.toMap();
    map['creationTime'] = creationTime;
    map['dataMaskingStatistics'] = dataMaskingStatistics.toMap();
    map['endTime'] = endTime;
    map['extract'] = extract.toMap();
    map['load'] = load.toMap();
    map['numChildJobs'] = numChildJobs;
    map['parentJobId'] = parentJobId;
    map['query'] = query.toMap();
    map['quotaDeferments'] = quotaDeferments;
    map['reservationId'] = reservationId;
    map['reservationUsage'] = pulumi.Input.encodeList<
        JobStatisticsReservationUsageItemResponse,
        Map<String, dynamic>>(reservationUsage, (value) => value.toMap());
    map['rowLevelSecurityStatistics'] = rowLevelSecurityStatistics.toMap();
    map['scriptStatistics'] = scriptStatistics.toMap();
    map['sessionInfo'] = sessionInfo.toMap();
    map['startTime'] = startTime;
    map['totalBytesProcessed'] = totalBytesProcessed;
    map['totalSlotMs'] = totalSlotMs;
    map['transactionInfo'] = transactionInfo.toMap();
    return map;
  }

  factory JobStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return JobStatisticsResponse(
      completionRatio: map['completionRatio'] as double,
      copy: JobStatistics5Response.fromMap(
          (map['copy'] as Map).cast<String, dynamic>()),
      creationTime: map['creationTime'] as String,
      dataMaskingStatistics: DataMaskingStatisticsResponse.fromMap(
          (map['dataMaskingStatistics'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      extract: JobStatistics4Response.fromMap(
          (map['extract'] as Map).cast<String, dynamic>()),
      load: JobStatistics3Response.fromMap(
          (map['load'] as Map).cast<String, dynamic>()),
      numChildJobs: map['numChildJobs'] as String,
      parentJobId: map['parentJobId'] as String,
      query: JobStatistics2Response.fromMap(
          (map['query'] as Map).cast<String, dynamic>()),
      quotaDeferments: (map['quotaDeferments'] as List).cast<String>(),
      reservationId: map['reservationId'] as String,
      reservationUsage:
          pulumi.Input.decodeList<JobStatisticsReservationUsageItemResponse>(
              map['reservationUsage'],
              (value) => JobStatisticsReservationUsageItemResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rowLevelSecurityStatistics: RowLevelSecurityStatisticsResponse.fromMap(
          (map['rowLevelSecurityStatistics'] as Map).cast<String, dynamic>()),
      scriptStatistics: ScriptStatisticsResponse.fromMap(
          (map['scriptStatistics'] as Map).cast<String, dynamic>()),
      sessionInfo: SessionInfoResponse.fromMap(
          (map['sessionInfo'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      totalBytesProcessed: map['totalBytesProcessed'] as String,
      totalSlotMs: map['totalSlotMs'] as String,
      transactionInfo: TransactionInfoResponse.fromMap(
          (map['transactionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
