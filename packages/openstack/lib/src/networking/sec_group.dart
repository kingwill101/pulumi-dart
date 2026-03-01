import 'package:pulumi/pulumi.dart' as pulumi;
import 'sec_group_args.dart';

/// ## Import
///
/// Security Groups can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/secGroup:SecGroup secgroup_1 38809219-5e8a-4852-9139-6f461c90e8bc
/// ```
class SecGroup extends pulumi.CustomResource {
  /// The collection of tags assigned on the security group, which have
  /// been explicitly and implicitly added.
  late final pulumi.Output<List<String>> allTags;
  /// Whether or not to delete the default
  /// egress security rules. This is `false` by default. See the below note
  /// for more information.
  late final pulumi.Output<bool?> deleteDefaultRules;
  /// A unique name for the security group.
  late final pulumi.Output<String> description;
  /// A unique name for the security group.
  late final pulumi.Output<String> name;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a port. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// security group.
  late final pulumi.Output<String> region;
  /// Indicates if the security group is stateful or
  /// stateless. Update of the stateful argument is allowed when there is no port
  /// associated with the security group. Available only in OpenStack environments
  /// with the `stateful-security-group` extension. Defaults to true.
  late final pulumi.Output<bool> stateful;
  /// A set of string tags for the security group.
  late final pulumi.Output<List<String>?> tags;
  /// The owner of the security group. Required if admin
  /// wants to create a port for another tenant. Changing this creates a new
  /// security group.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [SecGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecGroup]. {@macro pulumi_networking_sec_group_sec_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecGroup(
    String name, {
    SecGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/secGroup:SecGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allTags = registerOutput<List<String>>('allTags');
    this.deleteDefaultRules = registerOutput<bool?>('deleteDefaultRules');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.stateful = registerOutput<bool>('stateful');
    this.tags = registerOutput<List<String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
