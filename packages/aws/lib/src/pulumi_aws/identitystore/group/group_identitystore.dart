import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_external_id/group_external_id.dart';
import 'group_identitystore_args.dart';

/// Resource for managing an AWS IdentityStore Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an Identity Store Group using the combination `identity_store_id/group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:identitystore/group:Group example d-9c6705e95c/b8a1c340-8031-7071-a2fb-7dc540320c30
/// ```
class GroupIdentitystore extends pulumi.CustomResource {
  /// ARN of the Group.
  late final pulumi.Output<String> arn;

  /// A string containing the description of the group.
  late final pulumi.Output<String?> description;

  /// A string containing the name of the group. This value is commonly displayed when the group is referenced.
  late final pulumi.Output<String> displayName;

  /// A list of external IDs that contains the identifiers issued to this resource by an external identity provider. See External IDs below.
  late final pulumi.Output<List<GroupExternalId>> externalIds;

  /// The identifier of the newly created group in the identity store.
  late final pulumi.Output<String> groupId;

  /// The globally unique identifier for the identity store.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> identityStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  GroupIdentitystore(
    String name, {
    GroupIdentitystoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:identitystore/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.externalIds = registerOutput<List<GroupExternalId>>('externalIds');
    this.groupId = registerOutput<String>('groupId');
    this.identityStoreId = registerOutput<String>('identityStoreId');
    this.region = registerOutput<String>('region');
  }
}
