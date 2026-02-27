import 'package:pulumi/pulumi.dart';
import '../app_image_config_code_editor_app_image_config/app_image_config_code_editor_app_image_config.dart';
import '../app_image_config_jupyter_lab_image_config/app_image_config_jupyter_lab_image_config.dart';
import '../app_image_config_kernel_gateway_image_config/app_image_config_kernel_gateway_image_config.dart';
import 'app_image_config_args.dart';

/// Provides a SageMaker AI App Image Config resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ### Using Code Editor with empty configuration
///
///
///
/// ### Default File System Config
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI App Image Configs using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/appImageConfig:AppImageConfig example example
/// ```
class AppImageConfig extends CustomResource {
  /// The name of the App Image Config.
  late final Output<String> appImageConfigName;

  /// The Amazon Resource Name (ARN) assigned by AWS to this App Image Config.
  late final Output<String> arn;

  /// The CodeEditorAppImageConfig. See Code Editor App Image Config details below.
  late final Output<AppImageConfigCodeEditorAppImageConfig?>
      codeEditorAppImageConfig;

  /// The JupyterLabAppImageConfig. See Jupyter Lab Image Config details below.
  late final Output<AppImageConfigJupyterLabImageConfig?> jupyterLabImageConfig;

  /// The configuration for the file system and kernels in a SageMaker AI image running as a KernelGateway app. See Kernel Gateway Image Config details below.
  late final Output<AppImageConfigKernelGatewayImageConfig?>
      kernelGatewayImageConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** Exactly one of `code_editor_app_image_config`, `jupyter_lab_image_config`, or `kernel_gateway_image_config` must be configured. Empty blocks (e.g., `code_editor_app_image_config {}`) are valid configurations.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  AppImageConfig(
    String name, {
    AppImageConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/appImageConfig:AppImageConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appImageConfigName = registerOutput<String>('appImageConfigName');
    this.arn = registerOutput<String>('arn');
    this.codeEditorAppImageConfig =
        registerOutput<AppImageConfigCodeEditorAppImageConfig?>(
            'codeEditorAppImageConfig');
    this.jupyterLabImageConfig =
        registerOutput<AppImageConfigJupyterLabImageConfig?>(
            'jupyterLabImageConfig');
    this.kernelGatewayImageConfig =
        registerOutput<AppImageConfigKernelGatewayImageConfig?>(
            'kernelGatewayImageConfig');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
