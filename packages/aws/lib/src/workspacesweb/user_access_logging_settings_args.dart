// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_user_access_logging_settings_user_access_logging_settings_args_doc}
/// The set of arguments for UserAccessLoggingSettings.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_user_access_logging_settings_user_access_logging_settings_args_doc}
class UserAccessLoggingSettingsArgs {
  /// ARN of the Kinesis stream.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> kinesisStreamArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [UserAccessLoggingSettingsArgs].
  /// [kinesisStreamArn] ARN of the Kinesis stream.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  UserAccessLoggingSettingsArgs({
    required String kinesisStreamArn,
    String? region,
    Map<String, String>? tags,
  })  : kinesisStreamArn = pulumi.Input.asInput<String>(kinesisStreamArn),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kinesisStreamArn'] = kinesisStreamArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory UserAccessLoggingSettingsArgs.fromMap(Map<String, dynamic> map) {
    return UserAccessLoggingSettingsArgs(
      kinesisStreamArn: map['kinesisStreamArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
