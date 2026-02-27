import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_association_args.dart';

/// Associate an existing ElastiCache user and an existing user group.
///
/// > Pulumi will detect changes in the `aws.elasticache.UserGroup` since `aws.elasticache.UserGroupAssociation` changes the user IDs associated with the user group. You can ignore these changes with the `lifecycle` `ignore_changes` meta argument as shown in the example.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache user group associations using the `user_group_id` and `user_id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/userGroupAssociation:UserGroupAssociation example userGoupId1,userId
/// ```
class UserGroupAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the user group.
  late final pulumi.Output<String> userGroupId;

  /// ID of the user to associated with the user group.
  late final pulumi.Output<String> userId;

  UserGroupAssociation(
    String name, {
    UserGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/userGroupAssociation:UserGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.userGroupId = registerOutput<String>('userGroupId');
    this.userId = registerOutput<String>('userId');
  }
}
