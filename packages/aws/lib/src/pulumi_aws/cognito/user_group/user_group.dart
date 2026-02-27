import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_args.dart';

/// Provides a Cognito User Group resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Groups using the `user_pool_id`/`name` attributes concatenated. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userGroup:UserGroup group us-east-1_vG78M4goG/user-group
/// ```
class UserGroup extends pulumi.CustomResource {
  /// The description of the user group.
  late final pulumi.Output<String?> description;

  /// The name of the user group.
  late final pulumi.Output<String> name;

  /// The precedence of the user group.
  late final pulumi.Output<int?> precedence;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the IAM role to be associated with the user group.
  late final pulumi.Output<String?> roleArn;

  /// The user pool ID.
  late final pulumi.Output<String> userPoolId;

  UserGroup(
    String name, {
    UserGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userGroup:UserGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.precedence = registerOutput<int?>('precedence');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
    this.userPoolId = registerOutput<String>('userPoolId');
  }
}
