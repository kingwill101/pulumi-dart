import 'package:pulumi/pulumi.dart' as pulumi;
import '../keyspace_replication_specification/keyspace_replication_specification.dart';
import 'keyspace_args.dart';

/// Provides a Keyspaces Keyspace.
///
/// More information about keyspaces can be found in the [Keyspaces User Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/what-is-keyspaces.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a keyspace using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:keyspaces/keyspace:Keyspace example my_keyspace
/// ```
class Keyspace extends pulumi.CustomResource {
  /// The ARN of the keyspace.
  late final pulumi.Output<String> arn;

  /// The name of the keyspace to be created.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The replication specification of the keyspace.
  late final pulumi.Output<KeyspaceReplicationSpecification>
      replicationSpecification;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Keyspace(
    String name, {
    KeyspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:keyspaces/keyspace:Keyspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.replicationSpecification =
        registerOutput<KeyspaceReplicationSpecification>(
            'replicationSpecification');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
