// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_instance_job_status_response.dart';

/// Result data returned by getSqlServerInstanceJobsStatus.
class GetSqlServerInstanceJobsStatusResult {
  /// The list of jobs status running on the SQL Server instance.
  final List<SqlServerInstanceJobStatusResponse>? jobsStatus;

  /// Creates a new [GetSqlServerInstanceJobsStatusResult].
  /// [jobsStatus] The list of jobs status running on the SQL Server instance.
  const GetSqlServerInstanceJobsStatusResult({
    this.jobsStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobsStatus': ?(() { final guardedValue = jobsStatus; if (guardedValue == null) return null; return pulumi.Input.encodeList<SqlServerInstanceJobStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSqlServerInstanceJobsStatusResult.fromMap(Map<String, dynamic> map) {
    return GetSqlServerInstanceJobsStatusResult(
      jobsStatus: (() { final guardedValue = map['jobsStatus']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SqlServerInstanceJobStatusResponse>(guardedValue, (value) => SqlServerInstanceJobStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

