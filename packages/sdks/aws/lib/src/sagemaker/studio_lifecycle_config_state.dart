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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? studioLifecycleConfigAppType,
    pulumi.Output<String>? studioLifecycleConfigContent,
    pulumi.Output<String>? studioLifecycleConfigName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      studioLifecycleConfigAppType = pulumi.Input.asOptionalInput<String>(studioLifecycleConfigAppType),
      studioLifecycleConfigContent = pulumi.Input.asOptionalInput<String>(studioLifecycleConfigContent),
      studioLifecycleConfigName = pulumi.Input.asOptionalInput<String>(studioLifecycleConfigName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      studioLifecycleConfigAppType: map['studioLifecycleConfigAppType'] == null ? null : pulumi.Output.create<String>(map['studioLifecycleConfigAppType'] as String),
      studioLifecycleConfigContent: map['studioLifecycleConfigContent'] == null ? null : pulumi.Output.create<String>(map['studioLifecycleConfigContent'] as String),
      studioLifecycleConfigName: map['studioLifecycleConfigName'] == null ? null : pulumi.Output.create<String>(map['studioLifecycleConfigName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

