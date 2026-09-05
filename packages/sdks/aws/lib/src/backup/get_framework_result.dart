// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_framework_control.dart';

/// Result data returned by getFramework.
class GetFrameworkResult {
  /// ARN of the backup framework.
  final String? arn;
  /// One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  final List<GetFrameworkControl>? controls;
  /// Date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC).
  final String? creationTime;
  /// Deployment status of a framework. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`| `FAILED`.
  final String? deploymentStatus;
  /// Description of the framework.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of a parameter, for example, BackupPlanFrequency.
  final String? name;
  final String? region;
  /// Framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. The statuses are: `ACTIVE`, `PARTIALLY_ACTIVE`, `INACTIVE`, `UNAVAILABLE`. For more information refer to the [AWS documentation for Framework Status](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_DescribeFramework.html#Backup-DescribeFramework-response-FrameworkStatus)
  final String? status;
  /// Tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.
  final Map<String, String>? tags;

  /// Creates a new [GetFrameworkResult].
  /// [arn] ARN of the backup framework.
  /// [controls] One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  /// [creationTime] Date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC).
  /// [deploymentStatus] Deployment status of a framework. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`| `FAILED`.
  /// [description] Description of the framework.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of a parameter, for example, BackupPlanFrequency.
  /// [region] Optional.
  /// [status] Framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. The statuses are: `ACTIVE`, `PARTIALLY_ACTIVE`, `INACTIVE`, `UNAVAILABLE`. For more information refer to the [AWS documentation for Framework Status](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_DescribeFramework.html#Backup-DescribeFramework-response-FrameworkStatus)
  /// [tags] Tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.
  const GetFrameworkResult({
    this.arn,
    this.controls,
    this.creationTime,
    this.deploymentStatus,
    this.description,
    this.id,
    this.name,
    this.region,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'controls': ?(() { final guardedValue = controls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFrameworkControl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'creationTime': ?creationTime,
      'deploymentStatus': ?deploymentStatus,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetFrameworkResult.fromMap(Map<String, dynamic> map) {
    return GetFrameworkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      controls: (() { final guardedValue = map['controls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFrameworkControl>(guardedValue, (value) => GetFrameworkControl.fromMap((value as Map).cast<String, dynamic>())); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentStatus: (() { final guardedValue = map['deploymentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
