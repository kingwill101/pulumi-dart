// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_image_config_code_editor_app_image_config/app_image_config_code_editor_app_image_config.dart';
import '../app_image_config_jupyter_lab_image_config/app_image_config_jupyter_lab_image_config.dart';
import '../app_image_config_kernel_gateway_image_config/app_image_config_kernel_gateway_image_config.dart';

/// The set of arguments for AppImageConfig.
class AppImageConfigArgs {
  /// The name of the App Image Config.
  final Input<String> appImageConfigName;

  /// The CodeEditorAppImageConfig. See Code Editor App Image Config details below.
  final Input<AppImageConfigCodeEditorAppImageConfig>? codeEditorAppImageConfig;

  /// The JupyterLabAppImageConfig. See Jupyter Lab Image Config details below.
  final Input<AppImageConfigJupyterLabImageConfig>? jupyterLabImageConfig;

  /// The configuration for the file system and kernels in a SageMaker AI image running as a KernelGateway app. See Kernel Gateway Image Config details below.
  final Input<AppImageConfigKernelGatewayImageConfig>? kernelGatewayImageConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** Exactly one of <span pulumi-lang-nodejs="`codeEditorAppImageConfig`" pulumi-lang-dotnet="`CodeEditorAppImageConfig`" pulumi-lang-go="`codeEditorAppImageConfig`" pulumi-lang-python="`code_editor_app_image_config`" pulumi-lang-yaml="`codeEditorAppImageConfig`" pulumi-lang-java="`codeEditorAppImageConfig`">`code_editor_app_image_config`</span>, <span pulumi-lang-nodejs="`jupyterLabImageConfig`" pulumi-lang-dotnet="`JupyterLabImageConfig`" pulumi-lang-go="`jupyterLabImageConfig`" pulumi-lang-python="`jupyter_lab_image_config`" pulumi-lang-yaml="`jupyterLabImageConfig`" pulumi-lang-java="`jupyterLabImageConfig`">`jupyter_lab_image_config`</span>, or <span pulumi-lang-nodejs="`kernelGatewayImageConfig`" pulumi-lang-dotnet="`KernelGatewayImageConfig`" pulumi-lang-go="`kernelGatewayImageConfig`" pulumi-lang-python="`kernel_gateway_image_config`" pulumi-lang-yaml="`kernelGatewayImageConfig`" pulumi-lang-java="`kernelGatewayImageConfig`">`kernel_gateway_image_config`</span> must be configured. Empty blocks (e.g., <span pulumi-lang-nodejs="`codeEditorAppImageConfig " pulumi-lang-dotnet="`CodeEditorAppImageConfig " pulumi-lang-go="`codeEditorAppImageConfig " pulumi-lang-python="`code_editor_app_image_config " pulumi-lang-yaml="`codeEditorAppImageConfig " pulumi-lang-java="`codeEditorAppImageConfig ">`code_editor_app_image_config </span>{}`) are valid configurations.
  final Input<Map<String, String>>? tags;

  AppImageConfigArgs({
    required this.appImageConfigName,
    this.codeEditorAppImageConfig,
    this.jupyterLabImageConfig,
    this.kernelGatewayImageConfig,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appImageConfigName'] = appImageConfigName;
    final codeEditorAppImageConfigValue = codeEditorAppImageConfig;
    if (codeEditorAppImageConfigValue != null) {
      map['codeEditorAppImageConfig'] = Input.mapOptionalInputValue<
              AppImageConfigCodeEditorAppImageConfig, Map<String, dynamic>>(
          codeEditorAppImageConfigValue, (value) => value.toMap());
    }
    final jupyterLabImageConfigValue = jupyterLabImageConfig;
    if (jupyterLabImageConfigValue != null) {
      map['jupyterLabImageConfig'] = Input.mapOptionalInputValue<
              AppImageConfigJupyterLabImageConfig, Map<String, dynamic>>(
          jupyterLabImageConfigValue, (value) => value.toMap());
    }
    final kernelGatewayImageConfigValue = kernelGatewayImageConfig;
    if (kernelGatewayImageConfigValue != null) {
      map['kernelGatewayImageConfig'] = Input.mapOptionalInputValue<
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
      appImageConfigName: Input.asInput<String>(map['appImageConfigName']),
      codeEditorAppImageConfig:
          Input.asOptionalInput<AppImageConfigCodeEditorAppImageConfig>(
              map['codeEditorAppImageConfig']),
      jupyterLabImageConfig:
          Input.asOptionalInput<AppImageConfigJupyterLabImageConfig>(
              map['jupyterLabImageConfig']),
      kernelGatewayImageConfig:
          Input.asOptionalInput<AppImageConfigKernelGatewayImageConfig>(
              map['kernelGatewayImageConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
