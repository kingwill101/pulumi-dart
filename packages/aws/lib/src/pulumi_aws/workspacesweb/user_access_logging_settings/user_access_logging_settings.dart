import 'package:pulumi/pulumi.dart' as pulumi;
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
class UserAccessLoggingSettings extends pulumi.CustomResource {
  /// List of web portal ARNs that this user access logging settings resource is associated with.
  late final pulumi.Output<List<String>> associatedPortalArns;

  /// ARN of the Kinesis stream.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> kinesisStreamArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the user access logging settings resource.
  late final pulumi.Output<String> userAccessLoggingSettingsArn;

  UserAccessLoggingSettings(
    String name, {
    UserAccessLoggingSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userAccessLoggingSettings:UserAccessLoggingSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
