import 'package:pulumi/pulumi.dart';
import '../stack_access_endpoint/stack_access_endpoint.dart';
import '../stack_application_settings/stack_application_settings.dart';
import '../stack_storage_connector/stack_storage_connector.dart';
import '../stack_streaming_experience_settings/stack_streaming_experience_settings.dart';
import '../stack_user_setting/stack_user_setting.dart';
import 'stack_args.dart';

/// Provides an AppStream stack.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appstream.Stack` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/stack:Stack example stackID
/// ```
class Stack extends CustomResource {
  /// Set of configuration blocks defining the interface VPC endpoints. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
  /// See `access_endpoints` below.
  late final Output<List<StackAccessEndpoint>> accessEndpoints;

  /// Settings for application settings persistence.
  /// See `application_settings` below.
  late final Output<StackApplicationSettings> applicationSettings;

  /// ARN of the appstream stack.
  late final Output<String> arn;

  /// Date and time, in UTC and extended RFC 3339 format, when the stack was created.
  late final Output<String> createdTime;

  /// Description for the AppStream stack.
  late final Output<String?> description;

  /// Stack name to display.
  late final Output<String?> displayName;

  /// Domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
  late final Output<List<String>> embedHostDomains;

  /// URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed. .
  late final Output<String> feedbackUrl;

  /// Unique name for the AppStream stack.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// URL that users are redirected to after their streaming session ends.
  late final Output<String> redirectUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for the storage connectors to enable.
  /// See `storage_connectors` below.
  late final Output<List<StackStorageConnector>> storageConnectors;

  /// The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.
  /// See `streaming_experience_settings` below.
  late final Output<StackStreamingExperienceSettings>
      streamingExperienceSettings;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for the actions that are enabled or disabled for users during their streaming sessions. If not provided, these settings are configured automatically by AWS. If provided, the configuration should include a block for each configurable action.
  /// See `user_settings` below.
  late final Output<List<StackUserSetting>> userSettings;

  Stack(
    String name, {
    StackArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/stack:Stack',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessEndpoints =
        registerOutput<List<StackAccessEndpoint>>('accessEndpoints');
    this.applicationSettings =
        registerOutput<StackApplicationSettings>('applicationSettings');
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.embedHostDomains = registerOutput<List<String>>('embedHostDomains');
    this.feedbackUrl = registerOutput<String>('feedbackUrl');
    this.name = registerOutput<String>('name');
    this.redirectUrl = registerOutput<String>('redirectUrl');
    this.region = registerOutput<String>('region');
    this.storageConnectors =
        registerOutput<List<StackStorageConnector>>('storageConnectors');
    this.streamingExperienceSettings =
        registerOutput<StackStreamingExperienceSettings>(
            'streamingExperienceSettings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userSettings = registerOutput<List<StackUserSetting>>('userSettings');
  }
}
