import 'package:pulumi/pulumi.dart';
import 'studio_lifecycle_config_args.dart';

/// Provides a SageMaker AI Studio Lifecycle Config resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Studio Lifecycle Configs using the `studio_lifecycle_config_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/studioLifecycleConfig:StudioLifecycleConfig example example
/// ```
class StudioLifecycleConfig extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Studio Lifecycle Config.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  late final Output<String> studioLifecycleConfigAppType;

  /// The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  late final Output<String> studioLifecycleConfigContent;

  /// The name of the Studio Lifecycle Configuration to create.
  late final Output<String> studioLifecycleConfigName;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  StudioLifecycleConfig(
    String name, {
    StudioLifecycleConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/studioLifecycleConfig:StudioLifecycleConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.studioLifecycleConfigAppType =
        registerOutput<String>('studioLifecycleConfigAppType');
    this.studioLifecycleConfigContent =
        registerOutput<String>('studioLifecycleConfigContent');
    this.studioLifecycleConfigName =
        registerOutput<String>('studioLifecycleConfigName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
