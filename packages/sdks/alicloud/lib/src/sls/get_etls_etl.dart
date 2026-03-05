// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_etls_etl_configuration.dart';

class GetEtlsEtl {
  /// Detailed configuration of data processing tasks
  final pulumi.Input<GetEtlsEtlConfiguration> configuration;
  /// Task creation time. Example value: 1718787534
  final pulumi.Input<int> createTime;
  /// Data Processing Task Description
  final pulumi.Input<String> description;
  /// Data processing task display name
  final pulumi.Input<String> displayName;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// Unique identification of data processing task
  final pulumi.Input<String> jobName;
  /// The time when the task was last modified. Example value: 1718787681
  final pulumi.Input<int> lastModifiedTime;
  /// The task ID. Example values:
  final pulumi.Input<String> scheduleId;
  /// Task Status
  final pulumi.Input<String> status;

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
      'configuration': pulumi.Input.mapInputValue<GetEtlsEtlConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
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
      configuration: pulumi.Input.fromValue(GetEtlsEtlConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      createTime: pulumi.Input.fromValue(map['createTime'] as int),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      lastModifiedTime: pulumi.Input.fromValue(map['lastModifiedTime'] as int),
      scheduleId: pulumi.Input.fromValue(map['scheduleId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

