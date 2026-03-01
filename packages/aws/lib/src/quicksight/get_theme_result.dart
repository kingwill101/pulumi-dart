// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_theme_configuration.dart';
import 'get_theme_permission.dart';

/// Result data returned by getTheme.
class GetThemeResult {
  /// ARN of the theme.
  final String arn;
  final String awsAccountId;

  /// The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight.
  final String baseThemeId;

  /// The theme configuration, which contains the theme display properties. See configuration.
  final List<GetThemeConfiguration> configurations;

  /// The time that the theme was created.
  final String createdTime;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The time that the theme was last updated.
  final String lastUpdatedTime;

  /// Display name of the theme.
  final String name;

  /// A set of resource permissions on the theme. See permissions.
  final List<GetThemePermission> permissions;
  final String region;

  /// The theme creation status.
  final String status;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final Map<String, String> tags;
  final String themeId;

  /// A description of the current theme version being created/updated.
  final String versionDescription;

  /// The version number of the theme version.
  final int versionNumber;

  /// Creates a new [GetThemeResult].
  /// [arn] ARN of the theme.
  /// [awsAccountId] Required.
  /// [baseThemeId] The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight.
  /// [configurations] The theme configuration, which contains the theme display properties. See configuration.
  /// [createdTime] The time that the theme was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedTime] The time that the theme was last updated.
  /// [name] Display name of the theme.
  /// [permissions] A set of resource permissions on the theme. See permissions.
  /// [region] Required.
  /// [status] The theme creation status.
  /// [tags] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [themeId] Required.
  /// [versionDescription] A description of the current theme version being created/updated.
  /// [versionNumber] The version number of the theme version.
  GetThemeResult({
    required this.arn,
    required this.awsAccountId,
    required this.baseThemeId,
    required this.configurations,
    required this.createdTime,
    required this.id,
    required this.lastUpdatedTime,
    required this.name,
    required this.permissions,
    required this.region,
    required this.status,
    required this.tags,
    required this.themeId,
    required this.versionDescription,
    required this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'awsAccountId': awsAccountId,
      'baseThemeId': baseThemeId,
      'configurations':
          pulumi.Input.encodeList<GetThemeConfiguration, Map<String, dynamic>>(
            configurations,
            (value) => value.toMap(),
          ),
      'createdTime': createdTime,
      'id': id,
      'lastUpdatedTime': lastUpdatedTime,
      'name': name,
      'permissions':
          pulumi.Input.encodeList<GetThemePermission, Map<String, dynamic>>(
            permissions,
            (value) => value.toMap(),
          ),
      'region': region,
      'status': status,
      'tags': tags,
      'themeId': themeId,
      'versionDescription': versionDescription,
      'versionNumber': versionNumber,
    };
  }

  factory GetThemeResult.fromMap(Map<String, dynamic> map) {
    return GetThemeResult(
      arn: map['arn'] as String,
      awsAccountId: map['awsAccountId'] as String,
      baseThemeId: map['baseThemeId'] as String,
      configurations: pulumi.Input.decodeList<GetThemeConfiguration>(
        map['configurations'],
        (value) => GetThemeConfiguration.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      createdTime: map['createdTime'] as String,
      id: map['id'] as String,
      lastUpdatedTime: map['lastUpdatedTime'] as String,
      name: map['name'] as String,
      permissions: pulumi.Input.decodeList<GetThemePermission>(
        map['permissions'],
        (value) =>
            GetThemePermission.fromMap((value as Map).cast<String, dynamic>()),
      ),
      region: map['region'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      themeId: map['themeId'] as String,
      versionDescription: map['versionDescription'] as String,
      versionNumber: map['versionNumber'] as int,
    );
  }
}
