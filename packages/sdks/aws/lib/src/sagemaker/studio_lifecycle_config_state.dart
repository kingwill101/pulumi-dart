// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StudioLifecycleConfig resources.
class StudioLifecycleConfigState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Studio Lifecycle Config.
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  final pulumi.Input<String>? studioLifecycleConfigAppType;
  /// The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  final pulumi.Input<String>? studioLifecycleConfigContent;
  /// The name of the Studio Lifecycle Configuration to create.
  final pulumi.Input<String>? studioLifecycleConfigName;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [StudioLifecycleConfigState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Studio Lifecycle Config.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [studioLifecycleConfigAppType] The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  /// [studioLifecycleConfigContent] The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  /// [studioLifecycleConfigName] The name of the Studio Lifecycle Configuration to create.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  StudioLifecycleConfigState({
    this.arn,
    this.region,
    this.studioLifecycleConfigAppType,
    this.studioLifecycleConfigContent,
    this.studioLifecycleConfigName,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'studioLifecycleConfigAppType': ?studioLifecycleConfigAppType,
      'studioLifecycleConfigContent': ?studioLifecycleConfigContent,
      'studioLifecycleConfigName': ?studioLifecycleConfigName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory StudioLifecycleConfigState.fromMap(Map<String, dynamic> map) {
    return StudioLifecycleConfigState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      studioLifecycleConfigAppType: map['studioLifecycleConfigAppType'] == null ? null : (map['studioLifecycleConfigAppType'] as String).input(),
      studioLifecycleConfigContent: map['studioLifecycleConfigContent'] == null ? null : (map['studioLifecycleConfigContent'] as String).input(),
      studioLifecycleConfigName: map['studioLifecycleConfigName'] == null ? null : (map['studioLifecycleConfigName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

