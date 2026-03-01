// ignore_for_file: unused_element, unnecessary_cast

import 'get_etls_etl_configuration.dart';

class GetEtlsEtl {
  /// Detailed configuration of data processing tasks
  final GetEtlsEtlConfiguration configuration;
  /// Task creation time. Example value: 1718787534
  final int createTime;
  /// Data Processing Task Description
  final String description;
  /// Data processing task display name
  final String displayName;
  /// The ID of the resource supplied above.
  final String id;
  /// Unique identification of data processing task
  final String jobName;
  /// The time when the task was last modified. Example value: 1718787681
  final int lastModifiedTime;
  /// The task ID. Example values:
  final String scheduleId;
  /// Task Status
  final String status;

  /// Creates a new [GetEtlsEtl].
  /// [configuration] Detailed configuration of data processing tasks
  /// [createTime] Task creation time. Example value: 1718787534
  /// [description] Data Processing Task Description
  /// [displayName] Data processing task display name
  /// [id] The ID of the resource supplied above.
  /// [jobName] Unique identification of data processing task
  /// [lastModifiedTime] The time when the task was last modified. Example value: 1718787681
  /// [scheduleId] The task ID. Example values:
  /// [status] Task Status
  GetEtlsEtl({
    required this.configuration,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.id,
    required this.jobName,
    required this.lastModifiedTime,
    required this.scheduleId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration.toMap(),
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'id': id,
      'jobName': jobName,
      'lastModifiedTime': lastModifiedTime,
      'scheduleId': scheduleId,
      'status': status,
    };
  }

  factory GetEtlsEtl.fromMap(Map<String, dynamic> map) {
    return GetEtlsEtl(
      configuration: GetEtlsEtlConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as int,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      jobName: map['jobName'] as String,
      lastModifiedTime: map['lastModifiedTime'] as int,
      scheduleId: map['scheduleId'] as String,
      status: map['status'] as String,
    );
  }
}

