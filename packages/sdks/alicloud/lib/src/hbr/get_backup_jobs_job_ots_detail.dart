// ignore_for_file: unused_element, unnecessary_cast


class GetBackupJobsJobOtsDetail {
  final List<String> tableNames;

  /// Creates a new [GetBackupJobsJobOtsDetail].
  /// [tableNames] Required.
  GetBackupJobsJobOtsDetail({
    required this.tableNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableNames': tableNames,
    };
  }

  factory GetBackupJobsJobOtsDetail.fromMap(Map<String, dynamic> map) {
    return GetBackupJobsJobOtsDetail(
      tableNames: (map['tableNames'] as List).cast<String>(),
    );
  }
}

