import 'package:pulumi/pulumi.dart' as pulumi;
import '../framework_control/framework_control.dart';
import 'framework_backup_args.dart';

/// Provides an AWS Backup Framework resource.
///
/// > **Note:** For the Deployment Status of the Framework to be successful, please turn on resource tracking to enable AWS Config recording to track configuration changes of your backup resources. This can be done from the AWS Console.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Framework using the `id` which corresponds to the name of the Backup Framework. For example:
///
/// ```sh
/// $ pulumi import aws:backup/framework:Framework test <id>
/// ```
class FrameworkBackup extends pulumi.CustomResource {
  /// The ARN of the backup framework.
  late final pulumi.Output<String> arn;

  /// One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  late final pulumi.Output<List<FrameworkControl>> controls;

  /// The date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC).
  late final pulumi.Output<String> creationTime;

  /// The deployment status of a framework. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED` | `FAILED`.
  late final pulumi.Output<String> deploymentStatus;

  /// The description of the framework with a maximum of 1,024 characters
  late final pulumi.Output<String?> description;

  /// The unique name of the framework. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. For more information refer to the [AWS documentation for Framework Status](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_DescribeFramework.html#Backup-DescribeFramework-response-FrameworkStatus)
  late final pulumi.Output<String> status;

  /// Metadata that you can assign to help organize the frameworks you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  FrameworkBackup(
    String name, {
    FrameworkBackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/framework:Framework',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.controls = registerOutput<List<FrameworkControl>>('controls');
    this.creationTime = registerOutput<String>('creationTime');
    this.deploymentStatus = registerOutput<String>('deploymentStatus');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
