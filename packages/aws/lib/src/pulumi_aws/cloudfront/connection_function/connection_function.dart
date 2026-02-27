import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_function_connection_function_config/connection_function_connection_function_config.dart';
import 'connection_function_args.dart';

/// Manages an AWS CloudFront Connection Function.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Publish Enabled
///
///
///
/// ### With Key Value Store Associations
///
///
///
/// ### With Tags
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Connection Function using the function ID. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/connectionFunction:ConnectionFunction example E1PA6795UKMFR9
/// ```
class ConnectionFunction extends pulumi.CustomResource {
  /// ARN of the connection function.
  late final pulumi.Output<String> connectionFunctionArn;

  /// Code for the connection function. Maximum length is 40960 characters.
  late final pulumi.Output<String> connectionFunctionCode;

  /// Configuration information for the connection function. See `connection_function_config` below.
  late final pulumi.Output<ConnectionFunctionConnectionFunctionConfig>
      connectionFunctionConfig;

  /// ETag of the connection function.
  late final pulumi.Output<String> etag;

  /// ETag of the function's LIVE stage. Will be empty if the function has not been published.
  late final pulumi.Output<String> liveStageEtag;

  /// Name for the connection function. Must be 1-64 characters and can contain letters, numbers, hyphens, and underscores. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Whether to publish the function to the `LIVE` stage after creation or update. Defaults to `false`.
  late final pulumi.Output<bool> publish;

  /// Status of the connection function.
  late final pulumi.Output<String> status;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ConnectionFunction(
    String name, {
    ConnectionFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/connectionFunction:ConnectionFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionFunctionArn =
        registerOutput<String>('connectionFunctionArn');
    this.connectionFunctionCode =
        registerOutput<String>('connectionFunctionCode');
    this.connectionFunctionConfig =
        registerOutput<ConnectionFunctionConnectionFunctionConfig>(
            'connectionFunctionConfig');
    this.etag = registerOutput<String>('etag');
    this.liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    this.publish = registerOutput<bool>('publish');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
