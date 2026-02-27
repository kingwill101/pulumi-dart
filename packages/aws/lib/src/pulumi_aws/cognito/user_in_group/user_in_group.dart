import 'package:pulumi/pulumi.dart';
import 'user_in_group_args.dart';

/// Adds the specified user to the specified group.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a Cognito Group User using a comma-delimited string concatenating the `user_pool_id`, `group_name`, and `username` arguments. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userInGroup:UserInGroup example us-east-1_vG78M4goG,example-group,example-user
/// ```
class UserInGroup extends CustomResource {
  /// The name of the group to which the user is to be added.
  late final Output<String> groupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The user pool ID of the user and group.
  late final Output<String> userPoolId;

  /// The username of the user to be added to the group.
  late final Output<String> username;

  UserInGroup(
    String name, {
    UserInGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userInGroup:UserInGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.groupName = registerOutput<String>('groupName');
    this.region = registerOutput<String>('region');
    this.userPoolId = registerOutput<String>('userPoolId');
    this.username = registerOutput<String>('username');
  }
}
