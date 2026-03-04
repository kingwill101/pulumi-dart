// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_control.dart';

/// Input properties used for looking up and filtering Framework resources.
class FrameworkState {
  /// The ARN of the backup framework.
  final pulumi.Input<String>? arn;

  /// One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  final pulumi.Input<List<FrameworkControl>>? controls;

  /// The date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC).
  final pulumi.Input<String>? creationTime;

  /// The deployment status of a framework. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED` | `FAILED`.
  final pulumi.Input<String>? deploymentStatus;

  /// The description of the framework with a maximum of 1,024 characters
  final pulumi.Input<String>? description;

  /// The unique name of the framework. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. For more information refer to the [AWS documentation for Framework Status](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_DescribeFramework.html#Backup-DescribeFramework-response-FrameworkStatus)
  final pulumi.Input<String>? status;

  /// Metadata that you can assign to help organize the frameworks you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [FrameworkState].
  /// [arn] The ARN of the backup framework.
  /// [controls] One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  /// [creationTime] The date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC).
  /// [deploymentStatus] The deployment status of a framework. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED` | `FAILED`.
  /// [description] The description of the framework with a maximum of 1,024 characters
  /// [name] The unique name of the framework. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] A framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. For more information refer to the [AWS documentation for Framework Status](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_DescribeFramework.html#Backup-DescribeFramework-response-FrameworkStatus)
  /// [tags] Metadata that you can assign to help organize the frameworks you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  FrameworkState({
    this.arn,
    this.controls,
    this.creationTime,
    this.deploymentStatus,
    this.description,
    this.name,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'controls':
          ?pulumi.Input.mapOptionalInputValue<
            List<FrameworkControl>,
            List<Map<String, dynamic>>
          >(
            controls,
            (value) =>
                pulumi.Input.encodeList<FrameworkControl, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'creationTime': ?creationTime,
      'deploymentStatus': ?deploymentStatus,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory FrameworkState.fromMap(Map<String, dynamic> map) {
    return FrameworkState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      controls: (() {
        final guardedValue = map['controls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FrameworkControl>(
            guardedValue,
            (value) => FrameworkControl.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      creationTime: (() {
        final guardedValue = map['creationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deploymentStatus: (() {
        final guardedValue = map['deploymentStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
