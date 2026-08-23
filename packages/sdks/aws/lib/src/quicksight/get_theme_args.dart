// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_get_theme_get_theme_args_doc}
/// Arguments for getTheme.
/// {@endtemplate}
/// {@macro pulumi_quicksight_get_theme_get_theme_args_doc}
class GetThemeArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tags;
  /// Identifier of the theme.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> themeId;

  /// Creates a new [GetThemeArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [themeId] Identifier of the theme.
  const GetThemeArgs({
    this.awsAccountId,
    this.region,
    this.tags,
    required this.themeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'region': ?region,
      'tags': ?tags,
      'themeId': themeId,
    };
  }

  factory GetThemeArgs.fromMap(Map<String, dynamic> map) {
    return GetThemeArgs(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      themeId: pulumi.Input.fromValue(map['themeId'] as String),
    );
  }
}
