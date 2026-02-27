import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_codestarconnections_args.dart';

/// Provides a CodeStar Connection.
///
/// > **NOTE:** The `aws.codestarconnections.Connection` resource is created in the state `PENDING`. Authentication with the connection provider must be completed in the AWS Console. See the [AWS documentation](https://docs.aws.amazon.com/dtconsole/latest/userguide/connections-update.html) for details.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeStar connection.
///
///
/// Using `pulumi import`, import CodeStar connections using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codestarconnections/connection:Connection test-connection arn:aws:codestar-connections:us-west-1:0123456789:connection/79d4d357-a2ee-41e4-b350-2fe39ae59448
/// ```
class ConnectionCodestarconnections extends pulumi.CustomResource {
  /// The codestar connection ARN.
  late final pulumi.Output<String> arn;

  /// The codestar connection status. Possible values are `PENDING`, `AVAILABLE` and `ERROR`.
  late final pulumi.Output<String> connectionStatus;

  /// The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with `provider_type`
  late final pulumi.Output<String?> hostArn;

  /// The name of the connection to be created. The name must be unique in the calling AWS account. Changing `name` will create a new resource.
  late final pulumi.Output<String> name;

  /// The name of the external provider where your third-party code repository is configured. Valid values are `Bitbucket`, `GitHub`, `GitHubEnterpriseServer`, `GitLab` or `GitLabSelfManaged`. Changing `provider_type` will create a new resource. Conflicts with `host_arn`
  late final pulumi.Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of key-value resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ConnectionCodestarconnections(
    String name, {
    ConnectionCodestarconnectionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codestarconnections/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.connectionStatus = registerOutput<String>('connectionStatus');
    this.hostArn = registerOutput<String?>('hostArn');
    this.name = registerOutput<String>('name');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
