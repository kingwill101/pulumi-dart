// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'theme_configuration.dart';
import 'theme_permission.dart';

/// {@template pulumi_quicksight_theme_theme_args_doc}
/// The set of arguments for Theme.
/// {@endtemplate}
/// {@macro pulumi_quicksight_theme_theme_args_doc}
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

  /// Creates a new [ThemeArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [baseThemeId] The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use ListThemes or choose Themes from within an analysis.
  /// [configuration] The theme configuration, which contains the theme display properties. See configuration.
  /// [name] Display name of the theme.
  /// [permissions] A set of resource permissions on the theme. Maximum of 64 items. See permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [themeId] Identifier of the theme.
  /// [versionDescription] A description of the current theme version being created/updated.
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
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'baseThemeId': baseThemeId,
      'configuration': ?pulumi.Input.mapOptionalInputValue<ThemeConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<ThemePermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<ThemePermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'themeId': themeId,
      'versionDescription': ?versionDescription,
    };
  }

  factory ThemeArgs.fromMap(Map<String, dynamic> map) {
    return ThemeArgs(
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      baseThemeId: (map['baseThemeId'] as String).input(),
      configuration: map['configuration'] == null ? null : (ThemeConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      permissions: map['permissions'] == null ? null : (pulumi.Input.decodeList<ThemePermission>(map['permissions'], (value) => ThemePermission.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      themeId: (map['themeId'] as String).input(),
      versionDescription: map['versionDescription'] == null ? null : (map['versionDescription'] as String).input(),
    );
  }
}

