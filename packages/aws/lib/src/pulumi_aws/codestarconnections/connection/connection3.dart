import 'package:pulumi/pulumi.dart';
import 'connection_args3.dart';

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
class Connection3 extends CustomResource {
  /// The codestar connection ARN.
  late final Output<String> arn;

  /// The codestar connection status. Possible values are `PENDING`, `AVAILABLE` and `ERROR`.
  late final Output<String> connectionStatus;

  /// The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with `provider_type`
  late final Output<String?> hostArn;

  /// The name of the connection to be created. The name must be unique in the calling AWS account. Changing `name` will create a new resource.
  late final Output<String> name;

  /// The name of the external provider where your third-party code repository is configured. Valid values are `Bitbucket`, `GitHub`, `GitHubEnterpriseServer`, `GitLab` or `GitLabSelfManaged`. Changing `provider_type` will create a new resource. Conflicts with `host_arn`
  late final Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of key-value resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Connection3(
    String name, {
    ConnectionArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codestarconnections/connection:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
