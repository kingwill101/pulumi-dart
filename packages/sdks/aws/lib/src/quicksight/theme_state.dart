// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'theme_configuration.dart';
import 'theme_permission.dart';

/// Input properties used for looking up and filtering Theme resources.
class ThemeState {
  /// ARN of the theme.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use ListThemes or choose Themes from within an analysis.
  final pulumi.Input<String>? baseThemeId;
  /// The theme configuration, which contains the theme display properties. See configuration.
  final pulumi.Input<ThemeConfiguration>? configuration;
  /// The time that the theme was created.
  final pulumi.Input<String>? createdTime;
  /// The time that the theme was last updated.
  final pulumi.Input<String>? lastUpdatedTime;
  /// Display name of the theme.
  final pulumi.Input<String>? name;
  /// A set of resource permissions on the theme. Maximum of 64 items. See permissions.
  final pulumi.Input<List<ThemePermission>>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The theme creation status.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Identifier of the theme.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? themeId;
  /// A description of the current theme version being created/updated.
  final pulumi.Input<String>? versionDescription;
  /// The version number of the theme version.
  final pulumi.Input<int>? versionNumber;

  /// Creates a new [ThemeState].
  /// [arn] ARN of the theme.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [baseThemeId] The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use ListThemes or choose Themes from within an analysis.
  /// [configuration] The theme configuration, which contains the theme display properties. See configuration.
  /// [createdTime] The time that the theme was created.
  /// [lastUpdatedTime] The time that the theme was last updated.
  /// [name] Display name of the theme.
  /// [permissions] A set of resource permissions on the theme. Maximum of 64 items. See permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The theme creation status.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [themeId] Identifier of the theme.
  /// [versionDescription] A description of the current theme version being created/updated.
  /// [versionNumber] The version number of the theme version.
  ThemeState({
    this.arn,
    this.awsAccountId,
    this.baseThemeId,
    this.configuration,
    this.createdTime,
    this.lastUpdatedTime,
    this.name,
    this.permissions,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.themeId,
    this.versionDescription,
    this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'baseThemeId': ?baseThemeId,
      'configuration': ?pulumi.Input.mapOptionalInputValue<ThemeConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'createdTime': ?createdTime,
      'lastUpdatedTime': ?lastUpdatedTime,
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<ThemePermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<ThemePermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'themeId': ?themeId,
      'versionDescription': ?versionDescription,
      'versionNumber': ?versionNumber,
    };
  }

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    return ThemeState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      baseThemeId: map['baseThemeId'] == null ? null : ((map['baseThemeId'] as String).input()).input(),
      configuration: map['configuration'] == null ? null : ((ThemeConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input()).input(),
      createdTime: map['createdTime'] == null ? null : ((map['createdTime'] as String).input()).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : ((map['lastUpdatedTime'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      permissions: map['permissions'] == null ? null : ((pulumi.Input.decodeList<ThemePermission>(map['permissions']!, (value) => ThemePermission.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      themeId: map['themeId'] == null ? null : ((map['themeId'] as String).input()).input(),
      versionDescription: map['versionDescription'] == null ? null : ((map['versionDescription'] as String).input()).input(),
      versionNumber: map['versionNumber'] == null ? null : ((map['versionNumber'] as int).input()).input(),
    );
  }
}

