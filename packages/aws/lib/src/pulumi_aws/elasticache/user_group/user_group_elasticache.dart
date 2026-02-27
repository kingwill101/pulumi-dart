import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_elasticache_args.dart';

/// Provides an ElastiCache user group resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache user groups using the `user_group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/userGroup:UserGroup my_user_group userGoupId1
/// ```
class UserGroupElasticache extends pulumi.CustomResource {
  /// The ARN that identifies the user group.
  late final pulumi.Output<String> arn;

  /// The current supported value are `redis`, `valkey` (case insensitive).
  late final pulumi.Output<String> engine;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the user group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userGroupId;

  /// The list of user IDs that belong to the user group.
  late final pulumi.Output<List<String>?> userIds;

  UserGroupElasticache(
    String name, {
    UserGroupElasticacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/userGroup:UserGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.engine = registerOutput<String>('engine');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userGroupId = registerOutput<String>('userGroupId');
    this.userIds = registerOutput<List<String>?>('userIds');
  }
}
