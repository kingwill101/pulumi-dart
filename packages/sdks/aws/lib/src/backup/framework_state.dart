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
    pulumi.Output<String>? arn,
    pulumi.Output<List<FrameworkControl>>? controls,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? deploymentStatus,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      controls = pulumi.Input.asOptionalInput<List<FrameworkControl>>(controls),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      deploymentStatus = pulumi.Input.asOptionalInput<String>(deploymentStatus),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'controls': ?pulumi.Input.mapOptionalInputValue<List<FrameworkControl>, List<Map<String, dynamic>>>(controls, (value) => pulumi.Input.encodeList<FrameworkControl, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      controls: map['controls'] == null ? null : pulumi.Output.create<List<FrameworkControl>>(pulumi.Input.decodeList<FrameworkControl>(map['controls'], (value) => FrameworkControl.fromMap((value as Map).cast<String, dynamic>()))),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      deploymentStatus: map['deploymentStatus'] == null ? null : pulumi.Output.create<String>(map['deploymentStatus'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

