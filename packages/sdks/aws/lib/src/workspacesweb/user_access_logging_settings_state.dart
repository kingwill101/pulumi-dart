// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserAccessLoggingSettings resources.
class UserAccessLoggingSettingsState {
  /// List of web portal ARNs that this user access logging settings resource is associated with.
  final pulumi.Input<List<String>>? associatedPortalArns;
  /// ARN of the Kinesis stream.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? kinesisStreamArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the user access logging settings resource.
  final pulumi.Input<String>? userAccessLoggingSettingsArn;

  /// Creates a new [UserAccessLoggingSettingsState].
  /// [associatedPortalArns] List of web portal ARNs that this user access logging settings resource is associated with.
  /// [kinesisStreamArn] ARN of the Kinesis stream.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userAccessLoggingSettingsArn] ARN of the user access logging settings resource.
  UserAccessLoggingSettingsState({
    pulumi.Output<List<String>>? associatedPortalArns,
    pulumi.Output<String>? kinesisStreamArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userAccessLoggingSettingsArn,
  }) :
      associatedPortalArns = pulumi.Input.asOptionalInput<List<String>>(associatedPortalArns),
      kinesisStreamArn = pulumi.Input.asOptionalInput<String>(kinesisStreamArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userAccessLoggingSettingsArn = pulumi.Input.asOptionalInput<String>(userAccessLoggingSettingsArn);

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
      associatedPortalArns: map['associatedPortalArns'] == null ? null : pulumi.Output.create<List<String>>((map['associatedPortalArns'] as List).cast<String>()),
      kinesisStreamArn: map['kinesisStreamArn'] == null ? null : pulumi.Output.create<String>(map['kinesisStreamArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userAccessLoggingSettingsArn: map['userAccessLoggingSettingsArn'] == null ? null : pulumi.Output.create<String>(map['userAccessLoggingSettingsArn'] as String),
    );
  }
}

