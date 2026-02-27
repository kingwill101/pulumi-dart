import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_sse_configuration/group_sse_configuration.dart';
import 'group_verifiedaccess_args.dart';

/// Resource for managing a Verified Access Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with KMS Key
class GroupVerifiedaccess extends pulumi.CustomResource {
  /// Timestamp when the access group was created.
  late final pulumi.Output<String> creationTime;

  /// Timestamp when the access group was deleted.
  late final pulumi.Output<String> deletionTime;

  /// Description of the verified access group.
  late final pulumi.Output<String> description;

  /// Timestamp when the access group was last updated.
  late final pulumi.Output<String> lastUpdatedTime;

  /// AWS account number owning this resource.
  late final pulumi.Output<String> owner;

  /// The policy document that is associated with this resource.
  late final pulumi.Output<String?> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block to use KMS keys for server-side encryption.
  late final pulumi.Output<GroupSseConfiguration> sseConfiguration;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of this verified acess group.
  late final pulumi.Output<String> verifiedaccessGroupArn;

  /// ID of this verified access group.
  late final pulumi.Output<String> verifiedaccessGroupId;

  /// The id of the verified access instance this group is associated with.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> verifiedaccessInstanceId;

  GroupVerifiedaccess(
    String name, {
    GroupVerifiedaccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTime = registerOutput<String>('creationTime');
    this.deletionTime = registerOutput<String>('deletionTime');
    this.description = registerOutput<String>('description');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.owner = registerOutput<String>('owner');
    this.policyDocument = registerOutput<String?>('policyDocument');
    this.region = registerOutput<String>('region');
    this.sseConfiguration =
        registerOutput<GroupSseConfiguration>('sseConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.verifiedaccessGroupArn =
        registerOutput<String>('verifiedaccessGroupArn');
    this.verifiedaccessGroupId =
        registerOutput<String>('verifiedaccessGroupId');
    this.verifiedaccessInstanceId =
        registerOutput<String>('verifiedaccessInstanceId');
  }
}
