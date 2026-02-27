import 'package:pulumi/pulumi.dart';
import 'user_access_logging_settings_args.dart';

/// Resource for managing an AWS WorkSpaces Web User Access Logging Settings resource. Once associated with a web portal, user access logging settings control how user access events are logged to Amazon Kinesis.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Tags
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web User Access Logging Settings using the `user_access_logging_settings_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/userAccessLoggingSettings:UserAccessLoggingSettings example arn:aws:workspaces-web:us-west-2:123456789012:userAccessLoggingSettings/abcdef12345
/// ```
class UserAccessLoggingSettings extends CustomResource {
  /// List of web portal ARNs that this user access logging settings resource is associated with.
  late final Output<List<String>> associatedPortalArns;

  /// ARN of the Kinesis stream.
  ///
  /// The following arguments are optional:
  late final Output<String> kinesisStreamArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of the user access logging settings resource.
  late final Output<String> userAccessLoggingSettingsArn;

  UserAccessLoggingSettings(
    String name, {
    UserAccessLoggingSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userAccessLoggingSettings:UserAccessLoggingSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.associatedPortalArns =
        registerOutput<List<String>>('associatedPortalArns');
    this.kinesisStreamArn = registerOutput<String>('kinesisStreamArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userAccessLoggingSettingsArn =
        registerOutput<String>('userAccessLoggingSettingsArn');
  }
}
