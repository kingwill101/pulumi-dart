// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_framework_control.dart';

/// Result data returned by getFramework.
class GetFrameworkResult {
  /// ARN of the backup framework.
  final String arn;

  /// One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  final List<GetFrameworkControl> controls;

  /// Date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC).
  final String creationTime;

  /// Deployment status of a framework. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`| `FAILED`.
  final String deploymentStatus;

  /// Description of the framework.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of a parameter, for example, BackupPlanFrequency.
  final String name;
  final String region;

  /// Framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. The statuses are: `ACTIVE`, `PARTIALLY_ACTIVE`, `INACTIVE`, `UNAVAILABLE`. For more information refer to the [AWS documentation for Framework Status](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_DescribeFramework.html#Backup-DescribeFramework-response-FrameworkStatus)
  final String status;

  /// Tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.
  final Map<String, String> tags;

  /// Creates a new [GetFrameworkResult].
  /// [arn] ARN of the backup framework.
  /// [controls] One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  /// [creationTime] Date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC).
  /// [deploymentStatus] Deployment status of a framework. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`| `FAILED`.
  /// [description] Description of the framework.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of a parameter, for example, BackupPlanFrequency.
  /// [region] Required.
  /// [status] Framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. The statuses are: `ACTIVE`, `PARTIALLY_ACTIVE`, `INACTIVE`, `UNAVAILABLE`. For more information refer to the [AWS documentation for Framework Status](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_DescribeFramework.html#Backup-DescribeFramework-response-FrameworkStatus)
  /// [tags] Tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.
  GetFrameworkResult({
    required this.arn,
    required this.controls,
    required this.creationTime,
    required this.deploymentStatus,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['controls'] =
        pulumi.Input.encodeList<GetFrameworkControl, Map<String, dynamic>>(
            controls, (value) => value.toMap());
    map['creationTime'] = creationTime;
    map['deploymentStatus'] = deploymentStatus;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['status'] = status;
    map['tags'] = tags;
    return map;
  }

  factory GetFrameworkResult.fromMap(Map<String, dynamic> map) {
    return GetFrameworkResult(
      arn: map['arn'] as String,
      controls: pulumi.Input.decodeList<GetFrameworkControl>(
          map['controls'],
          (value) => GetFrameworkControl.fromMap(
              (value as Map).cast<String, dynamic>())),
      creationTime: map['creationTime'] as String,
      deploymentStatus: map['deploymentStatus'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
