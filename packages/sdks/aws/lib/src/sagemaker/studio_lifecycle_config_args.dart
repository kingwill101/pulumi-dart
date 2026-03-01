// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sagemaker_studio_lifecycle_config_studio_lifecycle_config_args_doc}
/// The set of arguments for StudioLifecycleConfig.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_studio_lifecycle_config_studio_lifecycle_config_args_doc}
class StudioLifecycleConfigArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  final pulumi.Input<String> studioLifecycleConfigAppType;
  /// The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  final pulumi.Input<String> studioLifecycleConfigContent;
  /// The name of the Studio Lifecycle Configuration to create.
  final pulumi.Input<String> studioLifecycleConfigName;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StudioLifecycleConfigArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [studioLifecycleConfigAppType] The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  /// [studioLifecycleConfigContent] The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  /// [studioLifecycleConfigName] The name of the Studio Lifecycle Configuration to create.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  StudioLifecycleConfigArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> studioLifecycleConfigAppType,
    required pulumi.Output<String> studioLifecycleConfigContent,
    required pulumi.Output<String> studioLifecycleConfigName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      studioLifecycleConfigAppType = pulumi.Input.asInput<String>(studioLifecycleConfigAppType),
      studioLifecycleConfigContent = pulumi.Input.asInput<String>(studioLifecycleConfigContent),
      studioLifecycleConfigName = pulumi.Input.asInput<String>(studioLifecycleConfigName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'studioLifecycleConfigAppType': studioLifecycleConfigAppType,
      'studioLifecycleConfigContent': studioLifecycleConfigContent,
      'studioLifecycleConfigName': studioLifecycleConfigName,
      'tags': ?tags,
    };
  }

  factory StudioLifecycleConfigArgs.fromMap(Map<String, dynamic> map) {
    return StudioLifecycleConfigArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      studioLifecycleConfigAppType: pulumi.Output.create<String>(map['studioLifecycleConfigAppType'] as String),
      studioLifecycleConfigContent: pulumi.Output.create<String>(map['studioLifecycleConfigContent'] as String),
      studioLifecycleConfigName: pulumi.Output.create<String>(map['studioLifecycleConfigName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

