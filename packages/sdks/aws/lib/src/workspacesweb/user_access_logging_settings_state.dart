// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserAccessLoggingSettings resources.
class UserAccessLoggingSettingsState {
  /// List of web portal ARNs that this user access logging settings resource is associated with.
  final pulumi.Input<List<String>?>? associatedPortalArns;
  /// ARN of the Kinesis stream.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? kinesisStreamArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// ARN of the user access logging settings resource.
  final pulumi.Input<String?>? userAccessLoggingSettingsArn;

  /// Creates a new [UserAccessLoggingSettingsState].
  /// [associatedPortalArns] List of web portal ARNs that this user access logging settings resource is associated with.
  /// [kinesisStreamArn] ARN of the Kinesis stream.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [userAccessLoggingSettingsArn] ARN of the user access logging settings resource.
  const UserAccessLoggingSettingsState({
    this.associatedPortalArns,
    this.kinesisStreamArn,
    this.region,
    this.tags,
    this.tagsAll,
    this.userAccessLoggingSettingsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedPortalArns': ?associatedPortalArns,
      'kinesisStreamArn': ?kinesisStreamArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userAccessLoggingSettingsArn': ?userAccessLoggingSettingsArn,
    };
  }

  factory UserAccessLoggingSettingsState.fromMap(Map<String, dynamic> map) {
    return UserAccessLoggingSettingsState(
      associatedPortalArns: (() { final guardedValue = map['associatedPortalArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kinesisStreamArn: (() { final guardedValue = map['kinesisStreamArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userAccessLoggingSettingsArn: (() { final guardedValue = map['userAccessLoggingSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
