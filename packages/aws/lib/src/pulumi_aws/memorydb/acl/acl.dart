import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_args.dart';

/// Provides a MemoryDB ACL.
///
/// More information about users and ACL-s can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/clusters.acls.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an ACL using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/acl:Acl example my-acl
/// ```
class Acl extends pulumi.CustomResource {
  /// The ARN of the ACL.
  late final pulumi.Output<String> arn;

  /// The minimum engine version supported by the ACL.
  late final pulumi.Output<String> minimumEngineVersion;

  /// Name of the ACL. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Set of MemoryDB user names to be included in this ACL.
  late final pulumi.Output<List<String>?> userNames;

  Acl(
    String name, {
    AclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/acl:Acl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.minimumEngineVersion = registerOutput<String>('minimumEngineVersion');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userNames = registerOutput<List<String>?>('userNames');
  }
}
