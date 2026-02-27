// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../theme_configuration/theme_configuration.dart';
import '../theme_permission/theme_permission.dart';

/// The set of arguments for Theme.
class ThemeArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use ListThemes or choose Themes from within an analysis.
  final pulumi.Input<String> baseThemeId;

  /// The theme configuration, which contains the theme display properties. See configuration.
  final pulumi.Input<ThemeConfiguration>? configuration;

  /// Display name of the theme.
  final pulumi.Input<String>? name;

  /// A set of resource permissions on the theme. Maximum of 64 items. See permissions.
  final pulumi.Input<List<ThemePermission>>? permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier of the theme.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> themeId;

  /// A description of the current theme version being created/updated.
  final pulumi.Input<String>? versionDescription;

  ThemeArgs({
    this.awsAccountId,
    required this.baseThemeId,
    this.configuration,
    this.name,
    this.permissions,
    this.region,
    this.tags,
    required this.themeId,
    this.versionDescription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['baseThemeId'] = baseThemeId;
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = pulumi.Input.mapOptionalInputValue<
          ThemeConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = pulumi.Input.mapOptionalInputValue<
              List<ThemePermission>, List<Map<String, dynamic>>>(
          permissionsValue,
          (value) =>
              pulumi.Input.encodeList<ThemePermission, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['themeId'] = themeId;
    final versionDescriptionValue = versionDescription;
    if (versionDescriptionValue != null) {
      map['versionDescription'] = versionDescriptionValue;
    }
    return map;
  }

  factory ThemeArgs.fromMap(Map<String, dynamic> map) {
    return ThemeArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      baseThemeId: pulumi.Input.asInput<String>(map['baseThemeId']),
      configuration: pulumi.Input.asOptionalInput<ThemeConfiguration>(
          map['configuration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      permissions: pulumi.Input.asOptionalInput<List<ThemePermission>>(
          map['permissions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      themeId: pulumi.Input.asInput<String>(map['themeId']),
      versionDescription:
          pulumi.Input.asOptionalInput<String>(map['versionDescription']),
    );
  }
}
