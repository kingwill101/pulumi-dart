// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sagemaker_studio_lifecycle_config_studio_lifecycle_config_args_doc}
/// The set of arguments for StudioLifecycleConfig.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_studio_lifecycle_config_studio_lifecycle_config_args_doc}
class StudioLifecycleConfigArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  final pulumi.Input<String> studioLifecycleConfigAppType;
  /// The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  final pulumi.Input<String> studioLifecycleConfigContent;
  /// The name of the Studio Lifecycle Configuration to create.
  final pulumi.Input<String> studioLifecycleConfigName;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [StudioLifecycleConfigArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [studioLifecycleConfigAppType] The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  /// [studioLifecycleConfigContent] The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  /// [studioLifecycleConfigName] The name of the Studio Lifecycle Configuration to create.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const StudioLifecycleConfigArgs({
    this.region,
    required this.studioLifecycleConfigAppType,
    required this.studioLifecycleConfigContent,
    required this.studioLifecycleConfigName,
    this.tags,
  });

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
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      studioLifecycleConfigAppType: pulumi.Input.fromValue(map['studioLifecycleConfigAppType'] as String),
      studioLifecycleConfigContent: pulumi.Input.fromValue(map['studioLifecycleConfigContent'] as String),
      studioLifecycleConfigName: pulumi.Input.fromValue(map['studioLifecycleConfigName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
