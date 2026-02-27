import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_ec2_args.dart';

/// Provides a Cloud9 EC2 Development Environment.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// Get the URL of the Cloud9 environment after creation:
///
///
///
/// Allocate a static IP to the Cloud9 environment:
class EnvironmentEC2 extends pulumi.CustomResource {
  /// The ARN of the environment.
  late final pulumi.Output<String> arn;

  /// The number of minutes until the running instance is shut down after the environment has last been used.
  late final pulumi.Output<int?> automaticStopTimeMinutes;

  /// The connection type used for connecting to an Amazon EC2 environment. Valid values are `CONNECT_SSH` and `CONNECT_SSM`. For more information please refer [AWS documentation for Cloud9](https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html).
  late final pulumi.Output<String?> connectionType;

  /// The description of the environment.
  late final pulumi.Output<String?> description;

  /// The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance. Valid values are
  /// * `amazonlinux-2-x86_64`
  /// * `amazonlinux-2023-x86_64`
  /// * `ubuntu-18.04-x86_64`
  /// * `ubuntu-22.04-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2023-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/ubuntu-22.04-x86_64`
  late final pulumi.Output<String> imageId;

  /// The type of instance to connect to the environment, e.g., `t2.micro`.
  late final pulumi.Output<String> instanceType;

  /// The name of the environment.
  late final pulumi.Output<String> name;

  /// The ARN of the environment owner. This can be ARN of any AWS IAM principal. Defaults to the environment's creator.
  late final pulumi.Output<String> ownerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.
  late final pulumi.Output<String?> subnetId;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The type of the environment (e.g., `ssh` or `ec2`).
  late final pulumi.Output<String> type;

  EnvironmentEC2(
    String name, {
    EnvironmentEC2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloud9/environmentEC2:EnvironmentEC2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.automaticStopTimeMinutes =
        registerOutput<int?>('automaticStopTimeMinutes');
    this.connectionType = registerOutput<String?>('connectionType');
    this.description = registerOutput<String?>('description');
    this.imageId = registerOutput<String>('imageId');
    this.instanceType = registerOutput<String>('instanceType');
    this.name = registerOutput<String>('name');
    this.ownerArn = registerOutput<String>('ownerArn');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
