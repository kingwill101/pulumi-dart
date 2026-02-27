import 'package:pulumi/pulumi.dart';
import '../theme_configuration/theme_configuration.dart';
import '../theme_permission/theme_permission.dart';
import 'theme_args.dart';

/// Resource for managing a QuickSight Theme.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Theme using the AWS account ID and theme ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/theme:Theme example 123456789012,example-id
/// ```
class Theme extends CustomResource {
  /// ARN of the theme.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use ListThemes or choose Themes from within an analysis.
  late final Output<String> baseThemeId;

  /// The theme configuration, which contains the theme display properties. See configuration.
  late final Output<ThemeConfiguration?> configuration;

  /// The time that the theme was created.
  late final Output<String> createdTime;

  /// The time that the theme was last updated.
  late final Output<String> lastUpdatedTime;

  /// Display name of the theme.
  late final Output<String> name;

  /// A set of resource permissions on the theme. Maximum of 64 items. See permissions.
  late final Output<List<ThemePermission>?> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The theme creation status.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifier of the theme.
  ///
  /// The following arguments are optional:
  late final Output<String> themeId;

  /// A description of the current theme version being created/updated.
  late final Output<String?> versionDescription;

  /// The version number of the theme version.
  late final Output<int> versionNumber;

  Theme(
    String name, {
    ThemeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/theme:Theme',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.baseThemeId = registerOutput<String>('baseThemeId');
    this.configuration = registerOutput<ThemeConfiguration?>('configuration');
    this.createdTime = registerOutput<String>('createdTime');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    this.permissions = registerOutput<List<ThemePermission>?>('permissions');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.themeId = registerOutput<String>('themeId');
    this.versionDescription = registerOutput<String?>('versionDescription');
    this.versionNumber = registerOutput<int>('versionNumber');
  }
}
