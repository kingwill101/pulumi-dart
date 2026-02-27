// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTheme.
class GetThemeArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier of the theme.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> themeId;

  GetThemeArgs({
    this.awsAccountId,
    this.region,
    this.tags,
    required this.themeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
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
    return map;
  }

  factory GetThemeArgs.fromMap(Map<String, dynamic> map) {
    return GetThemeArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      themeId: pulumi.Input.asInput<String>(map['themeId']),
    );
  }
}
