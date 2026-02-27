import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';

/// Manages an App Runner Connection.
///
/// > **NOTE:** After creation, you must complete the authentication handshake using the App Runner console.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import App Runner Connections using the `connection_name`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/connection:Connection example example
/// ```
class Connection extends pulumi.CustomResource {
  /// ARN of the connection.
  late final pulumi.Output<String> arn;

  /// Name of the connection.
  late final pulumi.Output<String> connectionName;

  /// Source repository provider. Valid values: `GITHUB`.
  late final pulumi.Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Current state of the App Runner connection. When the state is `AVAILABLE`, you can use the connection to create an `aws.apprunner.Service` resource.
  late final pulumi.Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.connectionName = registerOutput<String>('connectionName');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
