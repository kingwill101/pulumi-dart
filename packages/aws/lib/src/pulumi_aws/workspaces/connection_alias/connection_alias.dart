import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_alias_timeouts/connection_alias_timeouts.dart';
import 'connection_alias_args.dart';

/// Resource for managing an AWS WorkSpaces Connection Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Connection Alias using the connection alias ID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/connectionAlias:ConnectionAlias example rft-8012925589
/// ```
class ConnectionAlias extends pulumi.CustomResource {
  /// The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com.
  late final pulumi.Output<String> connectionString;

  /// The identifier of the Amazon Web Services account that owns the connection alias.
  late final pulumi.Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The current state of the connection alias.
  late final pulumi.Output<String> state;

  /// A map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ConnectionAliasTimeouts?> timeouts;

  ConnectionAlias(
    String name, {
    ConnectionAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/connectionAlias:ConnectionAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionString = registerOutput<String>('connectionString');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ConnectionAliasTimeouts?>('timeouts');
  }
}
