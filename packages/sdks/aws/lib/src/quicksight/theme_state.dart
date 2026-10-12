// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'theme_configuration.dart';
import 'theme_permission.dart';

/// Input properties used for looking up and filtering Theme resources.
class ThemeState {
  /// ARN of the theme.
  final pulumi.Input<String?>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? awsAccountId;
  /// ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use ListThemes or choose Themes from within an analysis.
  final pulumi.Input<String?>? baseThemeId;
  /// Theme configuration, which contains the theme display properties. See configuration.
  final pulumi.Input<ThemeConfiguration?>? configuration;
  /// Time that the theme was created.
  final pulumi.Input<String?>? createdTime;
  /// Time that the theme was last updated.
  final pulumi.Input<String?>? lastUpdatedTime;
  /// Display name of the theme.
  final pulumi.Input<String?>? name;
  /// Set of resource permissions on the theme. Maximum of 64 items. See permissions.
  final pulumi.Input<List<ThemePermission>?>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Theme creation status.
  final pulumi.Input<String?>? status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Identifier of the theme.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? themeId;
  /// Description of the current theme version being created/updated.
  final pulumi.Input<String?>? versionDescription;
  /// Version number of the theme version.
  final pulumi.Input<int?>? versionNumber;

  /// Creates a new [ThemeState].
  /// [arn] ARN of the theme.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [baseThemeId] ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use ListThemes or choose Themes from within an analysis.
  /// [configuration] Theme configuration, which contains the theme display properties. See configuration.
  /// [createdTime] Time that the theme was created.
  /// [lastUpdatedTime] Time that the theme was last updated.
  /// [name] Display name of the theme.
  /// [permissions] Set of resource permissions on the theme. Maximum of 64 items. See permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Theme creation status.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [themeId] Identifier of the theme.
  /// [versionDescription] Description of the current theme version being created/updated.
  /// [versionNumber] Version number of the theme version.
  const ThemeState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseThemeId: (() { final guardedValue = map['baseThemeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThemeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThemePermission>(guardedValue, (value) => ThemePermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      themeId: (() { final guardedValue = map['themeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionDescription: (() { final guardedValue = map['versionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionNumber: (() { final guardedValue = map['versionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
