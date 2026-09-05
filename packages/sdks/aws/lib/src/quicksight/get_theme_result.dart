// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_theme_configuration.dart';
import 'get_theme_permission.dart';

/// Result data returned by getTheme.
class GetThemeResult {
  /// ARN of the theme.
  final String? arn;
  final String? awsAccountId;
  /// The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight.
  final String? baseThemeId;
  /// The theme configuration, which contains the theme display properties. See configuration.
  final List<GetThemeConfiguration>? configurations;
  /// The time that the theme was created.
  final String? createdTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The time that the theme was last updated.
  final String? lastUpdatedTime;
  /// Display name of the theme.
  final String? name;
  /// A set of resource permissions on the theme. See permissions.
  final List<GetThemePermission>? permissions;
  final String? region;
  /// The theme creation status.
  final String? status;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final Map<String, String>? tags;
  final String? themeId;
  /// A description of the current theme version being created/updated.
  final String? versionDescription;
  /// The version number of the theme version.
  final int? versionNumber;

  /// Creates a new [GetThemeResult].
  /// [arn] ARN of the theme.
  /// [awsAccountId] Optional.
  /// [baseThemeId] The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight.
  /// [configurations] The theme configuration, which contains the theme display properties. See configuration.
  /// [createdTime] The time that the theme was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedTime] The time that the theme was last updated.
  /// [name] Display name of the theme.
  /// [permissions] A set of resource permissions on the theme. See permissions.
  /// [region] Optional.
  /// [status] The theme creation status.
  /// [tags] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [themeId] Optional.
  /// [versionDescription] A description of the current theme version being created/updated.
  /// [versionNumber] The version number of the theme version.
  const GetThemeResult({
    this.arn,
    this.awsAccountId,
    this.baseThemeId,
    this.configurations,
    this.createdTime,
    this.id,
    this.lastUpdatedTime,
    this.name,
    this.permissions,
    this.region,
    this.status,
    this.tags,
    this.themeId,
    this.versionDescription,
    this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'baseThemeId': ?baseThemeId,
      'configurations': ?(() { final guardedValue = configurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetThemeConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdTime': ?createdTime,
      'id': ?id,
      'lastUpdatedTime': ?lastUpdatedTime,
      'name': ?name,
      'permissions': ?(() { final guardedValue = permissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetThemePermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'themeId': ?themeId,
      'versionDescription': ?versionDescription,
      'versionNumber': ?versionNumber,
    };
  }

  factory GetThemeResult.fromMap(Map<String, dynamic> map) {
    return GetThemeResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      baseThemeId: (() { final guardedValue = map['baseThemeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetThemeConfiguration>(guardedValue, (value) => GetThemeConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetThemePermission>(guardedValue, (value) => GetThemePermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      themeId: (() { final guardedValue = map['themeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionDescription: (() { final guardedValue = map['versionDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionNumber: (() { final guardedValue = map['versionNumber']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
