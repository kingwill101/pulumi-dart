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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? baseThemeId,
    pulumi.Output<ThemeConfiguration>? configuration,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? lastUpdatedTime,
    pulumi.Output<String>? name,
    pulumi.Output<List<ThemePermission>>? permissions,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? themeId,
    pulumi.Output<String>? versionDescription,
    pulumi.Output<int>? versionNumber,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      baseThemeId = pulumi.Input.asOptionalInput<String>(baseThemeId),
      configuration = pulumi.Input.asOptionalInput<ThemeConfiguration>(configuration),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      lastUpdatedTime = pulumi.Input.asOptionalInput<String>(lastUpdatedTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      permissions = pulumi.Input.asOptionalInput<List<ThemePermission>>(permissions),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      themeId = pulumi.Input.asOptionalInput<String>(themeId),
      versionDescription = pulumi.Input.asOptionalInput<String>(versionDescription),
      versionNumber = pulumi.Input.asOptionalInput<int>(versionNumber);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      baseThemeId: map['baseThemeId'] == null ? null : pulumi.Output.create<String>(map['baseThemeId'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<ThemeConfiguration>(ThemeConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<ThemePermission>>(pulumi.Input.decodeList<ThemePermission>(map['permissions'], (value) => ThemePermission.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      themeId: map['themeId'] == null ? null : pulumi.Output.create<String>(map['themeId'] as String),
      versionDescription: map['versionDescription'] == null ? null : pulumi.Output.create<String>(map['versionDescription'] as String),
      versionNumber: map['versionNumber'] == null ? null : pulumi.Output.create<int>(map['versionNumber'] as int),
    );
  }
}

