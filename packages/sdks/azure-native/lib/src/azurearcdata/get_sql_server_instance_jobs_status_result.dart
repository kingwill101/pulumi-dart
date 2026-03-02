// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_instance_job_status_response.dart';

/// Result data returned by getSqlServerInstanceJobsStatus.
class GetSqlServerInstanceJobsStatusResult {
  /// The list of jobs status running on the SQL Server instance.
  final List<SqlServerInstanceJobStatusResponse>? jobsStatus;

  /// Creates a new [GetSqlServerInstanceJobsStatusResult].
  /// [jobsStatus] The list of jobs status running on the SQL Server instance.
  GetSqlServerInstanceJobsStatusResult({
    this.jobsStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobsStatus': ?jobsStatus == null ? null : pulumi.Input.encodeList<SqlServerInstanceJobStatusResponse, Map<String, dynamic>>(jobsStatus!, (value) => value.toMap()),
    };
  }

  factory GetSqlServerInstanceJobsStatusResult.fromMap(Map<String, dynamic> map) {
    return GetSqlServerInstanceJobsStatusResult(
      jobsStatus: map['jobsStatus'] == null ? null : pulumi.Input.decodeList<SqlServerInstanceJobStatusResponse>(map['jobsStatus']!, (value) => SqlServerInstanceJobStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

