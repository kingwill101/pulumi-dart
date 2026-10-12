// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_theme_configuration.dart';
import 'get_theme_permission.dart';

/// Result data returned by getTheme.
class GetThemeResult {
  /// ARN of the theme.
  final String? arn;
  final String? awsAccountId;
  /// ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight.
  final String? baseThemeId;
  /// Theme configuration, which contains the theme display properties. See configuration.
  final List<GetThemeConfiguration>? configurations;
  /// Time that the theme was created.
  final String? createdTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Time that the theme was last updated.
  final String? lastUpdatedTime;
  /// Display name of the theme.
  final String? name;
  /// Set of resource permissions on the theme. See permissions.
  final List<GetThemePermission>? permissions;
  final String? region;
  /// Theme creation status.
  final String? status;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final Map<String, String>? tags;
  final String? themeId;
  /// Description of the current theme version being created/updated.
  final String? versionDescription;
  /// Version number of the theme version.
  final int? versionNumber;

  /// Creates a new [GetThemeResult].
  /// [arn] ARN of the theme.
  /// [awsAccountId] Optional.
  /// [baseThemeId] ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight.
  /// [configurations] Theme configuration, which contains the theme display properties. See configuration.
  /// [createdTime] Time that the theme was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedTime] Time that the theme was last updated.
  /// [name] Display name of the theme.
  /// [permissions] Set of resource permissions on the theme. See permissions.
  /// [region] Optional.
  /// [status] Theme creation status.
  /// [tags] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [themeId] Optional.
  /// [versionDescription] Description of the current theme version being created/updated.
  /// [versionNumber] Version number of the theme version.
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
      versionNumber: (() { final guardedValue = map['versionNumber']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
