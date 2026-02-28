// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_image_config_code_editor_app_image_config.dart';
import 'app_image_config_jupyter_lab_image_config.dart';
import 'app_image_config_kernel_gateway_image_config.dart';

/// {@template pulumi_sagemaker_app_image_config_app_image_config_args_doc}
/// The set of arguments for AppImageConfig.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_app_image_config_app_image_config_args_doc}
class AppImageConfigArgs {
  /// The name of the App Image Config.
  final pulumi.Input<String> appImageConfigName;

  /// The CodeEditorAppImageConfig. See Code Editor App Image Config details below.
  final pulumi.Input<AppImageConfigCodeEditorAppImageConfig>?
      codeEditorAppImageConfig;

  /// The JupyterLabAppImageConfig. See Jupyter Lab Image Config details below.
  final pulumi.Input<AppImageConfigJupyterLabImageConfig>?
      jupyterLabImageConfig;

  /// The configuration for the file system and kernels in a SageMaker AI image running as a KernelGateway app. See Kernel Gateway Image Config details below.
  final pulumi.Input<AppImageConfigKernelGatewayImageConfig>?
      kernelGatewayImageConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** Exactly one of `code_editor_app_image_config`, `jupyter_lab_image_config`, or `kernel_gateway_image_config` must be configured. Empty blocks (e.g., `code_editor_app_image_config {}`) are valid configurations.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppImageConfigArgs].
  /// [appImageConfigName] The name of the App Image Config.
  /// [codeEditorAppImageConfig] The CodeEditorAppImageConfig. See Code Editor App Image Config details below.
  /// [jupyterLabImageConfig] The JupyterLabAppImageConfig. See Jupyter Lab Image Config details below.
  /// [kernelGatewayImageConfig] The configuration for the file system and kernels in a SageMaker AI image running as a KernelGateway app. See Kernel Gateway Image Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AppImageConfigArgs({
    required String appImageConfigName,
    AppImageConfigCodeEditorAppImageConfig? codeEditorAppImageConfig,
    AppImageConfigJupyterLabImageConfig? jupyterLabImageConfig,
    AppImageConfigKernelGatewayImageConfig? kernelGatewayImageConfig,
    String? region,
    Map<String, String>? tags,
  })  : appImageConfigName = pulumi.Input.asInput<String>(appImageConfigName),
        codeEditorAppImageConfig = pulumi.Input.asOptionalInput<
            AppImageConfigCodeEditorAppImageConfig>(codeEditorAppImageConfig),
        jupyterLabImageConfig =
            pulumi.Input.asOptionalInput<AppImageConfigJupyterLabImageConfig>(
                jupyterLabImageConfig),
        kernelGatewayImageConfig = pulumi.Input.asOptionalInput<
            AppImageConfigKernelGatewayImageConfig>(kernelGatewayImageConfig),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appImageConfigName'] = appImageConfigName;
    final codeEditorAppImageConfigValue = codeEditorAppImageConfig;
    if (codeEditorAppImageConfigValue != null) {
      map['codeEditorAppImageConfig'] = pulumi.Input.mapOptionalInputValue<
              AppImageConfigCodeEditorAppImageConfig, Map<String, dynamic>>(
          codeEditorAppImageConfigValue, (value) => value.toMap());
    }
    final jupyterLabImageConfigValue = jupyterLabImageConfig;
    if (jupyterLabImageConfigValue != null) {
      map['jupyterLabImageConfig'] = pulumi.Input.mapOptionalInputValue<
              AppImageConfigJupyterLabImageConfig, Map<String, dynamic>>(
          jupyterLabImageConfigValue, (value) => value.toMap());
    }
    final kernelGatewayImageConfigValue = kernelGatewayImageConfig;
    if (kernelGatewayImageConfigValue != null) {
      map['kernelGatewayImageConfig'] = pulumi.Input.mapOptionalInputValue<
              AppImageConfigKernelGatewayImageConfig, Map<String, dynamic>>(
          kernelGatewayImageConfigValue, (value) => value.toMap());
    }
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

  factory AppImageConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppImageConfigArgs(
      appImageConfigName: map['appImageConfigName'] as String,
      codeEditorAppImageConfig: map['codeEditorAppImageConfig'] == null
          ? null
          : AppImageConfigCodeEditorAppImageConfig.fromMap(
              (map['codeEditorAppImageConfig'] as Map).cast<String, dynamic>()),
      jupyterLabImageConfig: map['jupyterLabImageConfig'] == null
          ? null
          : AppImageConfigJupyterLabImageConfig.fromMap(
              (map['jupyterLabImageConfig'] as Map).cast<String, dynamic>()),
      kernelGatewayImageConfig: map['kernelGatewayImageConfig'] == null
          ? null
          : AppImageConfigKernelGatewayImageConfig.fromMap(
              (map['kernelGatewayImageConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
