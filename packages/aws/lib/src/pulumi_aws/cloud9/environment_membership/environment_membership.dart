import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_membership_args.dart';

/// Provides an environment member to an AWS Cloud9 development environment.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloud9 environment membership using the `environment-id#user-arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloud9/environmentMembership:EnvironmentMembership test environment-id#user-arn
/// ```
class EnvironmentMembership extends pulumi.CustomResource {
  /// The ID of the environment that contains the environment member you want to add.
  late final pulumi.Output<String> environmentId;

  /// The type of environment member permissions you want to associate with this environment member. Allowed values are `read-only` and `read-write` .
  late final pulumi.Output<String> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the environment member you want to add.
  late final pulumi.Output<String> userArn;

  /// The user ID in AWS Identity and Access Management (AWS IAM) of the environment member.
  late final pulumi.Output<String> userId;

  EnvironmentMembership(
    String name, {
    EnvironmentMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloud9/environmentMembership:EnvironmentMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.environmentId = registerOutput<String>('environmentId');
    this.permissions = registerOutput<String>('permissions');
    this.region = registerOutput<String>('region');
    this.userArn = registerOutput<String>('userArn');
    this.userId = registerOutput<String>('userId');
  }
}
