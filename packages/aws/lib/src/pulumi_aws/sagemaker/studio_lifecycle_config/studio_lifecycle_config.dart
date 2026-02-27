import 'package:pulumi/pulumi.dart' as pulumi;
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
class StudioLifecycleConfig extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Studio Lifecycle Config.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  late final pulumi.Output<String> studioLifecycleConfigAppType;

  /// The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  late final pulumi.Output<String> studioLifecycleConfigContent;

  /// The name of the Studio Lifecycle Configuration to create.
  late final pulumi.Output<String> studioLifecycleConfigName;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  StudioLifecycleConfig(
    String name, {
    StudioLifecycleConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/studioLifecycleConfig:StudioLifecycleConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
